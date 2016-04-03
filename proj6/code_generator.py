from tree import *
from MLparser import *
from assembly_helper import *
from errors import *

# Symbol Table (Keys are ID pattern, Values are Dicts themselves)
#  'type': Data type
#  'scope': Data scope
#  'mem_name": variable name for .data
#  'init_val': initial value (None if set with READ)
#  'curr_val': current value (None if used in an operation with a variable from READ)
#  'addr_reg': temporary register with memory address
#  'val_reg': temporary register with value
#  'used': True | False

# Register Table (Keys are register names, Values are Dicts themselves)
#  'id': ID pattern
#  'mem_type': Variable type (ADDRESS, VALUE, or TYPE[type of varible])

# Var_Queue
#  Holds a {'reg': "...", 'id': "...", 'mem_type': "VALUE"|"ADDRESS"|"TEMP.type} dict
#  Push to back, pop from front

# Float_var_queue:
#  Holds a {'reg': "...", 'id': "...", 'mem_type': "VALUE"|"ADDRESS"|"TEMP.float"} dict
#  Push to back, pop from front

# Auxiliary Reg Table (Keeps track registers not used for variables)
# Keeps track of $v0, $v1, $a0, $a1, $s0
# Each value has:
# - 'id': ID pattern
# - 'val': current integer value in register
# - 'mem_type': Variable type

# Float Reg Table
# Keeps track of the float registers
#   'id': ID pattern
#   'mem_type': Variable type (ADDRESS, VALUE, or TYPE[type of varible])

# Array Sym Table
# Keeps track of arrays/strings
# - Keys are the array or string
# - 'mem_name': MIPs variable name
# - 'type': output type (.ascii, .asciiz, or array type (=.word))
# - 'addr_reg': register that holds address to oth index
# - 'used: True | False

# Courtesy of Dr. Karro
def next_variable_name(curr_name):
   curr_name_len = len(curr_name)
   for i in range(curr_name_len - 1, -1, -1):
       if curr_name[i] != 'z':
           return curr_name[:i] + chr(ord(curr_name[i]) + 1) + curr_name[i + 1:]
       else:
           curr_name = curr_name[:i] + 'a' + curr_name[i + 1:]
   return 'a' + curr_name


def variable_name_generator():
    s = ""
    while True:
        s = next_variable_name(s)
        yield s


def temp_var_id_generator():
    s = ""
    while True:
        s = next_variable_name(s)
        yield str('temp_' + s)


# A glorified string wrapper class
class Register:
    def __init__(self, name):
        self.name = name

    # Allows for use of :s in str.format(...)
    def __format__(self, format):
        if format == 's':
            return str(self)

    # Allows for Register objects to be used as dictionary keys
    def __hash__(self):
        return hash(self.name)

    def __str__(self):
        return self.name

    def __repr__(self):
        return self.name

    def __eq__(self, other):
        if type(other) is Register:
            return self.name == other.name
        else:
            return False

    def __ne__(self, other):
        if type(other) is Register:
            return self.name != other.name
        else:
            return True

class CodeGenerator:
    """
    Object that takes a parse tree, symbol table, and output file,
    and has methods to compile the parse tree to asm
    """

    @staticmethod
    def _empty_reg_dict():
        return {'id': None, 'mem_type': None}

    @staticmethod
    def _empty_aux_reg_dict():
        return {'id': None, 'val': None, 'mem_type': None}

    @staticmethod
    def _empty_sym_table():
        return {'type': None, 'scope': None, 'mem_name': None, 'init_val': None,
                'curr_val': None, 'addr_reg': None, 'val_reg': None, 'used': False}

    def __init__(self, parse_tree, output_filename, is_debug, is_safe):
        # Compiler Flags
        self.debug_mode = is_debug
        self.safe_mode = is_safe

        # Function dictionary
        self.func_factory = {"READ": self._read_id, "WRITE": self._write_id, "ASSIGN": self._assign,
                             "DECLARATION": self._declare_id}

        # Stuff from Parser
        self.tree = parse_tree

        # Symbol Tables
        self.sym_table = {}
        self.array_sym_table = {}

        # Registers
        self.reg_table = self._init_reg_table()
        self.aux_reg_table = self._init_reg_table('aux')
        self.float_reg_table = self._init_reg_table('float')
        # Also has these attributes set in _create_register_pool:
        #   self.val_0 - Read-in ints are stored here
        #   self.val_1 -
        #   self.arg_0 - Integer / String printing
        #   self.arg_1 -
        #   self.arg_2 -
        #   self.arg_3 -
        #   self.save_0 - Where addresses are temporarily loaded
        #   self.float_0 - Where read-in floats are stored
        #   self.float_12 - Used for printing floats
        #   float_13 ($f13) is reserved for float immediates in asm_helper and has no guaranteed value

        # Variable Queues
        self.var_queue = []
        self.float_var_queue = []

        # Name / ID generators
        self.var_name_generator = variable_name_generator()
        self.temp_id_generator = temp_var_id_generator()

        # Output options
        self.output_name = output_filename
        self.output_string = ''

    def compile(self):
        self._start()
        self._traverse(self.tree)
        self._finish()

    def _create_register_pool(self, type_s = 'normal'):
        pool = []

        if type_s == 'aux':
            # v regs
            for i in range(2):
                reg = Register('$v' + str(i))
                pool.append(reg)
                setattr(self, 'val_' + str(i), reg)

            # a regs
            for i in range(2):
                reg = Register('$a' + str(i))
                pool.append(reg)
                setattr(self, 'arg_' + str(i), reg)

            # $s0 register (used for loading addresses in variable swaps)
            reg = Register('$s0')
            pool.append(reg)
            setattr(self, 'save_0', reg)

        elif type_s == 'float':
            # Generates first set of temporary float registers
            for i in range(4,11):
                pool.append(Register('$f' + str(i)))

            # Generates second set of temporary float registers
            for i in range(16,19):
                pool.append(Register('$f' + str(i)))

            # Generates 'preserved' float registers
            if not self.safe_mode:
                for i in range(20,32):
                    pool.append(Register('$f' + str(i)))

        else:
            # Generate $t_ registers
            for i in range(10):
                pool.append(Register('$t' + str(i)))

            # Generate $s_ registers
            if not self.safe_mode:
                for i in range(1,7):
                    pool.append(Register('$s' + str(i)))

        return pool

    def _init_reg_table(self, type_s = 'normal'):
        reg_pool = self._create_register_pool(type_s)
        empty_dict = self._empty_aux_reg_dict() if type_s == 'aux' else self._empty_reg_dict()

        ret_dict = {}
        for reg in reg_pool:
            ret_dict[reg] = empty_dict
        return ret_dict

    def _traverse(self, tree):
        if self.tree.children:
            for child in tree.children:
                if child.label in self.func_factory:
                    self.func_factory[child.label](tree.children)
                    break
                else:
                    self._traverse(child)

    def _find_free_register(self, var_type = 'normal'):
        ### Sub-function ###
        def save_using_s0(name, var_reg):
            # If we are in safe mode, we need to save off the old value
            if self.safe_mode:
                # Save $s0 value to stack
                # Allocate stack space
                self.output_string += asm_allocate_stack_space()

                # We don't have to increment stack_offset since it would just be decremented at the end of this block
                self.output_string += asm_save_reg_to_stack(self.save_0, 0)

            save_reg = '$s0'

            # Load address to $s0
            self.output_string += asm_load_mem_addr(name, save_reg)

            # Write value from val_reg to RAM
            self.output_string += asm_save_mem_var_from_addr(save_reg, var_reg)

            # If we are in safe_mode, we need to restore the old value
            if self.safe_mode:
                # Reset $s0 to what it was before
                self.output_string += asm_load_reg_from_stack(self.save_0, 0)
        #################
        # Get what registers/var_queue to look at (float or normal)
        reg_table = self.float_reg_table if var_type == 'float' else self.reg_table
        var_queue = self.float_var_queue if var_type == 'float' else self.var_queue

        # Look for open register
        for reg in reg_table:
            if not self.reg_table[reg]['id']:
                return reg

        # If none are open, free up a register
        reg_pop = var_queue.pop(0)

        mem_id = reg_pop['id']
        reg = reg_pop['reg']

        # If the register stores an address, just update tables
        if reg_pop['mem_type'] == 'ADDRESS':
            id_dict = self.sym_table[mem_id]

            # Remove old references
            id_dict['addr_reg'] = None
        elif reg_pop['mem_type'] == 'VALUE':
            id_dict = self.sym_table[mem_id]
            mem_name = id_dict['mem_name']
            addr_reg = id_dict['addr_reg']

            # Try to find addr_reg, else free up a register
            if not addr_reg:
                save_using_s0(mem_name, reg)
            else:
                # Write value from reg to RAM
                self.output_string += asm_save_mem_var_from_addr(addr_reg, reg)

            # Remove old references in symbol and register tables
            id_dict['val_reg'] = None
        else: # mem_type = TYPE.*
            mem_name = next(self.var_name_generator)
            mem_type = reg_pop['mem_type']
            mem_type = mem_type[mem_type.find('.') + 1:]

            # Create sym_table entry
            self.sym_table[mem_id] = {'type': mem_type, 'scope': None, 'mem_name': mem_name, 'init_val': None,
                                      'curr_val': None, 'addr_reg': None, 'val_reg': None, 'used': True}

            # Save variable to memory
            save_using_s0(mem_name, reg)

        # Clear register in reg_table
        self.reg_table[reg] = CodeGenerator._empty_reg_dict()
        return reg

    # Abstraction that allows all methods that need to try to access sym_table to run this instead to catch
    # un-initialization error
    def _get_sym_table_entry(self, ident, token):
        id_dict = None
        try:
            id_dict = self.sym_table[ident]
        except KeyError:
            SemanticError.raise_initialization_error(id, token.line_num, token.col)
        return id_dict

    # Used mostly or expr to reserve registers for temporary variables
    def _update_reg_table(self, table_type, mem_id, reg, reg_type):
        reg_table = self.float_reg_table if table_type == 'float' else self.reg_table
        reg_dict = reg_table[reg]
        reg_dict['id'] =  mem_id
        reg_dict['mem_type'] = reg_type

    # Will update tables to reflect the changes made to val_reg and addr_reg
    # Even though this may call more updates than necessary, just use it to ensure everything is updated
    # This WILL NOT update if passed registers are None. Instead, manually remove them yourself (might make a separate
    #  method for this later)
    # DOES NOT update var_queue, that is up to you
    def _update_tables(self, table_type, id, new_addr_reg, new_val_reg, id_dict = None, addr_reg_dict = None, val_reg_dict = None):
        reg_table = self.float_reg_table if table_type == 'float' else self.reg_table
        # Null Checks
        if not id_dict:
            id_dict = self.sym_table[id]
        if not addr_reg_dict and new_addr_reg:
            addr_reg_dict = reg_table[new_addr_reg]
        if not val_reg_dict and new_val_reg:
            val_reg_dict = reg_table[new_val_reg]

        # Edit addr_reg dict
        if new_addr_reg:
            addr_reg_dict['id'] = id
            addr_reg_dict['mem_type'] = 'ADDRESS'

            id_dict['addr_reg'] = new_addr_reg

        # Edit val_reg dict
        if new_val_reg:
            val_reg_dict['id'] = id
            val_reg_dict['mem_type'] = 'VALUE'

            id_dict['val_reg'] = new_val_reg

    def _start(self):
        # Append .text' section
        self.output_string = '.text\n'

    def _finish(self):
        # Prepend '.data' section
        data_section = '.data\n'

        for id in self.sym_table:
            id_dict = self.sym_table[id]

            if id_dict['used'] == 2:
                type = id_dict['type']
                scope = id_dict['scope']
                name = id_dict['mem_name']
                init_val = id_dict['init_val']

                # Variables can be:
                # - ints, floats -> .word
                # - booleans -> .byte
                # - strings -> different sym table
                o_type = '.byte' if type == 'bool' else '.word'

                data_section += '{:s}:\t{:s}\t{:d}\t# {:s} in original\n'\
                                .format(name, o_type, init_val if init_val else 0, id)

        for string in self.array_sym_table:
            id_dict = self.array_sym_table[string]

            if id_dict['used'] == 2:
                name = id_dict['mem_name']
                o_type = id_dict['type']

                # string might have to be sanitized when using arrays
                data_section += '{:s}:\t{:s}\t{:s}\t'.format(name, o_type, string)

        self.output_string = data_section + self.output_string

        # Write file
        fp = open(self.output_name, 'w')
        fp.write(self.output_string)
        fp.close()

        # Debug printing
        if self.debug_mode:
            print('\n', 'Symbol Table: ', self.sym_table, '\n\n', 'Array Symbol Table: ', self.array_sym_table, '\n\n',
                  'Register Table: ', self.reg_table, '\n\n', 'Float Register Table', self.float_reg_table, '\n\n',
                  'Auxiliary Register Table', self.aux_reg_table, '\n\n',
                  'Variable Queue: ', self.var_queue, '\n\n', 'Float Variable Queue: ', self.float_var_queue, '\n')

    # Takes a list of id's and writes required code to read input into each
    def _read_id(self, tree_nodes):
        id_list = tree_nodes[1].children
        for ident in id_list:
            id_dict = self._get_sym_table_entry(ident.children[0].token.pattern, ident.children[0].token)

            # Alert process id that if this id is called, set it to used
            # (Because it was dynamically set)
            id_dict['used'] = True

            self.output_string += asm_read(id_dict['type']) # places input into $v0
            self._assign_id(id_dict, self.val_0)

    # Takes a list of expressions and correctly prints them
    def _write_id(self, tree_nodes):
        expr_lst = tree_nodes[1].children
        for expr in expr_lst:
            reg, var_type, var_token = self._process_expr_bool(expr.children)
            curr_v0 = self.aux_reg_table[self.val_0]['val']
            if asm_check_syscode_write(var_type, curr_v0):
                self.output_string += asm_set_syscode_write(var_type)
                self.aux_reg_table[self.val_0]['id'] = None
                self.aux_reg_table[self.val_0]['val'] = asm_get_syscode_write(var_type)
                self.aux_reg_table[self.val_0]['mem_name'] = None
                self.aux_reg_table[self.val_0]['mem_type'] = None
            self.output_string += asm_write(reg, var_type)

    # Takes assign tree_nodes: with an ID on the left and some expression on the right
    # Initializes variable on the left, and evalutes RHS using '_expr_funct'
    def _assign(self, tree_nodes):
        # Get RHS result
        expr_reg, expr_type, expr_token = self._process_expr_bool(tree_nodes[0].children[1].children)

        # Get LHS variable
        token = tree_nodes[0].children[0].children[0].token
        ident = token.pattern
        id_dict = self._get_sym_table_entry(ident, token)

        # Run _assign_id
        self._assign_id(id_dict, expr_reg)

        # I don't think this was doing anything, since it's conditional is incorrect
        # Assign LHS to RHS
        # if id_reg is a register, we need to equate the values
        # If not, we assume curr_val was correctly changed in _assign_id
        #if type(id_reg) == 'str': # change this to pointer type!
        #    self.output_string += asm_reg_set(id_reg, expr_reg)

    # Takes an id
    # Ensures that the id addr and val are initialized into registers
    # Returns nothing, since it should correctly equate values
    # (Either changing curr_val if RHS is an immediate, or
    def _assign_id(self, id_dict, assn_reg):
        var_type = id_dict['type']
        name = id_dict['mem_name']
        addr_reg = id_dict['addr_reg']
        val_reg = id_dict['val_reg']
        curr_val = id_dict['curr_val']

        python_assn_type = type(assn_reg)
        if python_assn_type is Register:
            id_dict['curr_val'] = None
        elif python_assn_type is int and var_type == 'int':
            id_dict['curr_val'] = assn_reg
        elif python_assn_type is float and var_type == 'float':
            id_dict['curr_val'] = assn_reg
        elif python_assn_type is str and var_type == 'string':
            id_dict['curr_val'] = assn_reg

        # Only load variable into memory if there is no curr_val (i.e. the compiler can't do static analysis)
        if not curr_val:
            # Set id to be printed out to MIPS
            id_dict['used'] = True

            # Load variable addr and val into registers
            if not val_reg:
                type_str = 'float' if var_type == 'float' else 'normal'
                var_queue = self.float_var_queue if var_type == 'float' else 'normal'

                val_reg = self._find_free_register(type_str)
                self._update_tables(id, type_str, addr_reg, val_reg, id_dict)

                if not addr_reg:
                    addr_reg = self._find_free_register(type_str)
                    self._update_tables(id, type_str, addr_reg, val_reg, id_dict)
                    var_queue.append({'reg': addr_reg, 'id': id, 'mem_type': 'ADDRESS'})
                    self.output_string += asm_load_mem_addr(name, addr_reg)

                # Since it is less work to pop an addr register from the queue, I would rather push that first
                # (if necessary), and then push the value register
                var_queue.append({'reg': val_reg, 'id': id, 'mem_type': 'VALUE'})

                self.output_string += asm_load_mem_var_from_addr(addr_reg, val_reg)

            # Equate registers (move assn_reg value into val_reg)
            self.output_string += asm_reg_set(val_reg, assn_reg)

    # Needs to initialize an identifier's symble table
    # Update: type, mem_name, init_val, curr_val, addr_reg, var_reg (unless value can be statically analyzed)
    # Returns nothing
    def _declare(self, tree_nodes):
        pass

    # Used to run individual declare statements
    def _process_declare_term(self, var_id, var_type):
        pass

    # # Takes a sequence of primary tokens and arith_ops
    # # Checks that all variables are initialized
    # # Does any addition/subtraction required
    # # Returns a pair: the register of the result or the INTLITERAL itself if it could be discerned,
    # # the type of the variable, and None for the token
    # def _process_expr(self, tree_nodes):
    #     if len(tree_nodes) == 1: # then tree_nodes is a single PRIMARY
    #         return self._process_primary(tree_nodes[0])
    #     else: # PRIMARY +/- PRIMARY +/- ... +/- PRIMARY
    #         ## Sub function ##
    #         # Returns the register that has the value of accum_id loaded
    #         def ensure_id_loaded(curr_id, curr_reg):
    #             # Assume curr_reg is correct
    #             id_reg = curr_reg
    #
    #             id_dict = None
    #             try:
    #                 id_dict = self.sym_table[curr_id]
    #             except KeyError:
    #                 pass
    #
    #             # If id_dict is not found, then curr_reg is correct
    #             if id_dict:
    #                 id_reg = id_dict['val_reg']
    #                 addr_reg = id_dict['addr_reg']
    #                 mem_name = id_dict['mem_name']
    #
    #                 # If id_reg is None, load it into memory
    #                 if not id_reg:
    #                     id_reg = self._find_free_register()
    #                     self.var_queue.append({'reg': id_reg, 'id': curr_id, 'mem_type': 'VALUE'})
    #                     self._update_tables(curr_id, None, id_reg, id_dict)
    #
    #                     # If addr_reg is none
    #                     if not addr_reg:
    #                         addr_reg = self._find_free_register()
    #                         self.var_queue.append({'reg': addr_reg, 'id': curr_id, 'mem_type': 'ADDRESS'})
    #                         self._update_tables(curr_id, addr_reg, id_reg, id_dict)
    #
    #                         # Load address into addr_reg
    #                         self.output_string += asm_load_mem_addr(mem_name, addr_reg)
    #
    #                     # Load id_reg from addr_reg
    #                     self.output_string += asm_load_mem_var_from_addr(addr_reg, id_reg)
    #
    #             return id_reg
    #         ##################
    #
    #         ## Sub function ##
    #         def initialize_val_reg(mem_id, curr_reg, curr_type):
    #             # Initialize val_reg
    #             accum_reg = self._find_free_register()
    #
    #             # Add to var_queue
    #             self.var_queue.append({'reg': accum_reg, 'id': mem_id, 'mem_type': 'TYPE.' + str(curr_type)})
    #
    #             # Reserve accum_reg
    #             self._update_reg_table(mem_id, accum_reg, 'VALUE')
    #
    #             # Equate val_reg and curr_reg
    #             self.output_string += asm_reg_set(accum_reg, curr_reg)
    #
    #             return accum_reg
    #         ##################
    #
    #         # Generate a temp ID
    #         accum_id = next(self.temp_id_generator)
    #
    #         # Create temp variables
    #         immediate_val = 0
    #         val_reg = None
    #
    #         # Process the first child and store it to immediate_val or val_reg
    #         temp_reg, val_type, val_token = self._process_primary(tree_nodes[0])
    #         if type(temp_reg) == int:
    #             immediate_val = temp_reg
    #         else:
    #             val_reg = initialize_val_reg(accum_id, temp_reg, val_type)
    #
    #         # Load all the remaining
    #         for i in range(1, len(tree_nodes) - 1, 2):
    #             # Load the operation
    #             oper = tree_nodes[i].label
    #
    #             # Load the next term
    #             next_reg, next_type, next_token = self._process_primary(tree_nodes[i+1])
    #
    #             # Get id of next_reg value if it's not an immediate
    #             next_id = None
    #             if next_reg and type(next_reg) is not int:
    #                 next_id = self.reg_table[next_reg]['id']
    #
    #             # Check if accum_id is in val_reg
    #             # Will return None if there is no sym_table entry and val_reg is None
    #             val_reg = ensure_id_loaded(accum_id, val_reg)
    #
    #             # If next_id exists, check that it is still loaded into a register
    #             if next_id:
    #                 next_reg = ensure_id_loaded(next_id, next_reg)
    #
    #             # Type check
    #             if val_type is not next_type:
    #                 SemanticError.raise_type_mismatch_error(val_reg, next_reg, val_type, next_type, val_token.line_num,
    #                                                         val_token.col)
    #
    #             if type(next_reg) is int: # next_reg is an immediate
    #                 if oper == 'PLUS':
    #                     immediate_val += next_reg
    #                 elif oper == 'MINUS':
    #                     immediate_val -= next_reg
    #             elif not val_reg: # Initialize val_reg if necessary
    #                 if oper == 'PLUS':
    #                     val_reg = initialize_val_reg(accum_id, next_reg, val_type)
    #                 elif oper == 'MINUS':
    #                     # Multiply next_reg by -1
    #                     self.output_string += asm_multiply_int(next_reg, next_reg, -1)
    #                     val_reg = initialize_val_reg(accum_id, next_reg, val_type)
    #             else: # simply add next_reg to val_reg
    #                 if oper == 'PLUS':
    #                     self.output_string += asm_add(val_reg, val_reg, next_reg)
    #                 elif oper == 'MINUS':
    #                     self.output_string += asm_sub(val_reg, val_reg, next_reg)
    #
    #         # Add up the immediate and val_reg if necessary
    #         if immediate_val != 0 and val_reg:
    #             self.output_string += asm_add(val_reg, val_reg, immediate_val)
    #
    #         if immediate_val and not val_reg:
    #             return immediate_val, val_type, val_token
    #         else:
    #             return val_reg, val_type, val_token
    #
    # # Takes a PRIMARY node
    # # Processes the node to get the INTLITERAL, IDENT, or EXPRESSION
    # # Loads whatever it is into memory (if necessary)
    # # returns the (val_reg, type, token) pair that all these other methods return
    # def _process_primary(self, primary_node):
    #     primary_children = primary_node.children
    #
    #     primary_child = primary_children[0] # only one child
    #     if primary_child.label == 'INTLITERAL':
    #         return int(primary_child.token.pattern), 'int', primary_child.token
    #     elif primary_child.label == 'IDENT': # single IDENT
    #         return self._process_id(primary_child.children[0].token)
    #     else: # Single <expression>
    #         return self._process_expr(primary_children)

    # Used for expressions
    # Returns the register that has the value of accum_id loaded
    def _ensure_id_loaded(self, curr_id, curr_reg):
        # Assume curr_reg is correct
        id_reg = curr_reg

        id_dict = None
        try:
            id_dict = self.sym_table[curr_id]
        except KeyError:
            # Don't throw an error here, since the accum_id may hav ebeen removed from a register yet
            pass

        # If id_dict is not found, then curr_reg is correct
        if id_dict:
            id_reg = id_dict['val_reg']
            addr_reg = id_dict['addr_reg']
            mem_name = id_dict['mem_name']

            # If id_reg is None, load it into memory
            if not id_reg:
                id_reg = self._find_free_register()
                self.var_queue.append({'reg': id_reg, 'id': curr_id, 'mem_type': 'VALUE'})
                self._update_tables(curr_id, None, id_reg, id_dict)

                # If addr_reg is none
                if not addr_reg:
                    addr_reg = self._find_free_register()
                    self.var_queue.append({'reg': addr_reg, 'id': curr_id, 'mem_type': 'ADDRESS'})
                    self._update_tables(curr_id, addr_reg, id_reg, id_dict)

                    # Load address into addr_reg
                    self.output_string += asm_load_mem_addr(mem_name, addr_reg)

                # Load id_reg from addr_reg
                self.output_string += asm_load_mem_var_from_addr(addr_reg, id_reg)

        return id_reg

    # Used for expressions
    # Returns the newly reserved accum_register
    def _initialize_val_reg(self, mem_id, curr_reg, curr_type):
        cleaned_type = 'float' if curr_type == 'float' else 'normal'
        var_queue = self.float_var_queue if cleaned_type == 'float' else self.var_queue

        # Initialize val_reg
        accum_reg = self._find_free_register(cleaned_type)

        # Add to var_queue
        var_queue.append({'reg': accum_reg, 'id': mem_id, 'mem_type': 'TYPE.' + str(curr_type)})

        # Reserve accum_reg
        self._update_reg_table(mem_id, accum_reg, 'VALUE')

        # Equate val_reg and curr_reg
        self.output_string += asm_reg_set(accum_reg, curr_reg)

        return accum_reg

    # <expr_bool>     ->  <term_bool> { <log_or> <term_bool> }
    def _process_expr_bool(self, tree_nodes):
        #  Generate a temp ID
        accum_id = next(self.temp_id_generator)

        # Create temp variables
        immediate_val = 0
        val_reg = None

        # Process the first child and store it to immediate_val or val_reg
        temp_reg, val_type, val_token = self._process_term_bool(tree_nodes[0])
        if type(temp_reg) == int:
            immediate_val = temp_reg
        else:
            val_reg = self._initialize_val_reg(accum_id, temp_reg, val_type)

        # Process first term
        for i in range(1, len(tree_nodes), 2):
            # Type check
            pass

        # Process remaining terms
        for i in range(1, len(tree_nodes), 2):
            pass

        # If immediate_val and val_reg are non null, or them together
        if immediate_val and val_reg:
            immediate_val_num = 0 if not immediate_val else 1
            self.output_string += asm_log_or(val_reg, val_reg, immediate_val_num)

        # Return value register, type, and token
        if immediate_val and not val_reg:
            return immediate_val, val_type, val_token
        else:
            return val_reg, val_type, val_token

    # <term_bool>     ->  <expr_eq> { <log_and> <expr_eq> }
    # Returns value register (or immediate), value type, and token
    def _process_term_bool(self):
        pass

    # <expr_eq>       ->  <expr_relation> { <equal_op> <expr_relation> }
    # Returns value register (or immediate), value type, and token
    def _process_expr_eq(self):
        pass

    # <expr_relation> ->  <expr_arith> { <rel_op> <expr_arith> }
    # Returns value register (or immediate), value type, and token
    def _process_expr_rel(self):
        pass

    # <expr_arith>    ->  <term_arith> { <unary_add_op> <term_arith> }
    # Returns value register (or immediate), value type, and token
    def _process_expr_arith(self):
        pass

    # <term_arith>    ->  <fact_arith> { <mul_op> <fact_arith> }
    # Returns value register (or immediate), value type, and token
    def _process_term_arith(self):
        pass

    # <fact_arith>    ->  <unary_op> <term_unary> | <unary_add_op> <term_unary> | <term_unary>
    # Returns value register (or immediate), value type, and token
    def _process_fact_arith(self):
        pass

    # <term_unary>    ->  <literals> | <ident> | (expr_bool)
    # Returns value register (or immediate), value type, and token
    def _process_term_unary(self):
        pass

    # Takes a full ID token
    # Handles loading a variable's address and value into registers
    # Returns value register (or immediate), value type, and token
    # (This is mainly for expressions)
    # (Note: This will NOT force a variable to loaded into memory if the compiler can statically evaluate the value)
    def _process_id(self, token):
        ident = token.pattern
        id_dict = self._get_sym_table_entry(ident, token)

        var_type = id_dict['type']
        mem_name = id_dict['mem_name']
        addr_reg = id_dict['addr_reg']
        val_reg = id_dict['val_reg']
        curr_val = id_dict['curr_val']

        # Check if curr_val is not None (thus, if we can just return it)
        if curr_val:
            return curr_val, var_type, token
        # If the value of the variable is not in register, load it
        elif not val_reg:
            # If not, load the value into a register if the addr is already loaded
            if addr_reg:
                val_reg = self._find_free_register(var_type)

                self._update_tables(ident, addr_reg, val_reg, id_dict)
                self.var_queue.append({'reg': val_reg, 'id': ident, 'mem_type': 'VALUE'})

                self.output_string += asm_load_mem_var_from_addr(id_dict['addr_reg'], val_reg)
            # Worst case, you have to load both the addr and the value into registers
            else:
                addr_reg = self._find_free_register()
                self._update_tables(ident, addr_reg, val_reg, id_dict)
                self.var_queue.append({'reg': addr_reg, 'id': ident, 'mem_type': 'ADDRESS'})

                val_reg = self._find_free_register(var_type)
                self._update_tables(ident, addr_reg, val_reg, id_dict)
                self.var_queue.append({'reg': val_reg, 'id': ident, 'mem_type': 'VALUE'})

                self.output_string += asm_load_mem_var(mem_name, addr_reg, val_reg)
        # else: If val_reg was good to go, just return it

        # Set id to be printed out in MIPS if it couldn't be statically analyzed
        id_dict['used'] = True

        return val_reg, var_type, token
