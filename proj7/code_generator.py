from tree import *
from MLparser import *
from assembly_helper import *
from errors import *
from copy import *

# Symbol Table (Keys are ID pattern, Values are Dicts themselves)
#  'type': Data type
#  'mem_name": variable name for .data
#  'init_val': initial value ('DYNAMIC' if set with READ)('TEMP' if TEMP variable)
#  'curr_val': current value (None if used in an operation with a variable from READ)
#  'addr_reg': temporary register with memory address
#  'val_reg': temporary register with value
#  'used': True | False

# Array Sym Table
# Keeps track of arrays/strings
# - Keys are the array or string
# - 'mem_name': MIPs variable name
# - 'type': output type (.ascii, .asciiz, or array type (=.word))
# - 'addr_reg': register that holds address to oth index
# - 'used: True | False

# Register Table (Keys are register names, Values are Dicts themselves)
#  'id': ID pattern
#  'mem_type': Variable type (ADDRESS, VALUE, or TYPE[type of varible])

# Auxiliary Reg Table (Keeps track registers not used for variables)
# Keeps track of $v0, $v1, $a0, $a1, $s0
# Each value has:
# - 'id': ID pattern
# - 'val': current integer value in register or a Register
# - 'mem_type': Variable type

# Float Reg Table
# Keeps track of the float registers
#   'id': ID pattern
#   'mem_type': Variable type (ADDRESS, VALUE, or TYPE[type of varible])

# Var Queue
#  Holds a {'reg': "...", 'id': "...", 'mem_type': "VALUE"|"ADDRESS"|"ARRAY_ADDRESS"|"TYPE.type"} dict
#  Push to back, pop from front

# Float Var Queue:
#  Holds a {'reg': "...", 'id': "...", 'mem_type': "VALUE"|"ADDRESS"|"TYPE.float"} dict
#  Push to back, pop from front

# Block Variable Edits Hash Table
# This will keep track of when conditional blocks edit variables
#  Keys are 'mem_name' (unique variable identifiers)
#
#  Values are a list of properties from Symbol Table that have been edited


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
    def _empty_sym_table_dict():
        return {'type': None, 'scope': None, 'mem_name': None, 'init_val': None,
                'curr_val': None, 'addr_reg': None, 'val_reg': None, 'used': False}

    @staticmethod
    def _empty_array_sym_table_dict():
        return {'type': None, 'mem_name': None, 'addr_reg': None, 'used': False}

    @staticmethod
    def _empty_tail_call(accum_id, val_reg, val_type, val_token, immediate_val):
        return val_reg, immediate_val, val_type

    def __init__(self, parse_tree, output_filename, is_debug, is_safe):
        # Name / ID generators
        self.var_name_generator = variable_name_generator()
        self.temp_id_generator = temp_var_id_generator()
        self.conditional_name_generator = variable_name_generator()

        # Compiler Flags
        self.debug_mode = is_debug
        self.safe_mode = is_safe

        # Function dictionary
        self.func_factory = {"READ": self._read, "WRITE": self._write, "ASSIGN": self._assign,
                             "DECLARATION": self._declare, "IF_STATEMENT": self._process_if}

        # Stuff from Parser
        self.tree = parse_tree

        # Symbol Tables
        self.sym_table = {}
        # These system strings start with an untypable character to ensure no conflict with user-defined strings
        self.bool_true_string = '"True"'
        self.bool_false_string = '"False"'
        self.array_sym_table = self._create_array_sym_table()

        # Registers
        self.reg_table = self._init_reg_table()
        self.aux_reg_table = self._init_reg_table('aux')
        self.float_reg_table = self._init_reg_table('float')
        # Also has these attributes set in _create_register_pool:
        #   self.val_0 - Read-in ints are stored here
        #   self.val_1 - We use it as a temp register for our psuedoinstructions (instead of $at) - DO NOT USE THIS
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

        # Used to keep track of things a block changes to reconcile them when it closes
        self.block_var_edits = {}

        # Output options
        self.output_name = output_filename
        self.output_string = ''

    def compile(self):
        self._start()
        self._block(self.tree)
        self._finish()

    def _create_array_sym_table(self):
        array_sym_table = {}

        # 'True' for bool
        true_dict = self._empty_array_sym_table_dict()
        true_dict['type'] = '.asciiz'
        true_dict['mem_name'] = next(self.var_name_generator)
        array_sym_table[self.bool_true_string] = true_dict

        # 'False' for bool
        false_dict = self._empty_array_sym_table_dict()
        false_dict['type'] = '.asciiz'
        false_dict['mem_name'] = next(self.var_name_generator)
        array_sym_table[self.bool_false_string] = false_dict

        return array_sym_table

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

            # $f0
            reg = Register('$f0')
            pool.append(reg)
            setattr(self, 'float_0', reg)

            # $f12
            reg = Register('$f12')
            pool.append(reg)
            setattr(self, 'float_12', reg)

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
            ret_dict[reg] = deepcopy(empty_dict)

        return ret_dict

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
            if not reg_table[reg]['id']:
                return reg

        # If none are open, free up a register
        reg_pop = var_queue.pop(0)

        mem_id = reg_pop['id']
        mem_type = reg_pop['mem_type']
        reg = reg_pop['reg']

        if mem_type == 'ARRAY_ADDRESS': # Update array_sym_table and return reg
            self.array_sym_table[mem_id]['addr_reg'] = None
        elif mem_type == 'ADDRESS': # If the register stores an address, just update tables
            self.sym_table[mem_id]['addr_reg'] = None
        elif mem_type == 'VALUE':
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
            mem_type = mem_type[mem_type.find('.') + 1:]

            # Create sym_table entry
            self.sym_table[mem_id] = {'type': mem_type, 'scope': None, 'mem_name': mem_name, 'init_val': 'TEMP',
                                      'curr_val': None, 'addr_reg': None, 'val_reg': None, 'used': True}

            # Save variable to memory
            save_using_s0(mem_name, reg)

        # Clear register in reg_table
        reg_table[reg] = CodeGenerator._empty_reg_dict()
        return reg

    # Abstraction that allows all methods that need to try to access sym_table to run this instead to catch
    # un-initialization error
    def _get_sym_table_entry(self, ident, token):
        id_dict = None
        try:
            id_dict = self.sym_table[ident]
        except KeyError:
            SemanticError.raise_declaration_error(ident, token.line_num, token.col)
        return id_dict

    def _edit_block_var_edit(self, mem_name, prop):
        try:
            self.block_var_edits[mem_name].append(prop)
        except KeyError:
            list = [prop]
            self.block_var_edits[mem_name] = list

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
    def _update_tables(self, table_type, ident, new_addr_reg, new_val_reg, id_dict = None, addr_reg_dict = None, val_reg_dict = None):
        val_reg_table = self.float_reg_table if table_type == 'float' else self.reg_table

        # Null Checks
        if not id_dict:
            id_dict = self.sym_table[ident]
        if not addr_reg_dict and new_addr_reg:
            addr_reg_dict = self.reg_table[new_addr_reg]
        if not val_reg_dict and new_val_reg:
            val_reg_dict = val_reg_table[new_val_reg]

        # Edit addr_reg dict
        if new_addr_reg:
            addr_reg_dict['id'] = ident
            addr_reg_dict['mem_type'] = 'ADDRESS'

            id_dict['addr_reg'] = new_addr_reg

        # Edit val_reg dict
        if new_val_reg:
            val_reg_dict['id'] = ident
            val_reg_dict['mem_type'] = 'VALUE'

            id_dict['val_reg'] = new_val_reg

    def _start(self):
        # Append .text' section
        self.output_string = '.text\n'

    def _finish(self):
        data_section = ''

        for id in self.sym_table:
            id_dict = self.sym_table[id]

            if id_dict['used']:
                val_type = id_dict['type']
                scope = id_dict['scope']
                name = id_dict['mem_name']
                init_val = id_dict['init_val']

                # Variables can be:
                # - ints, floats -> .word
                # - booleans -> .byte
                # - strings -> different sym table
                o_type = '.word'
                if val_type == 'bool':
                    o_type = '.byte'
                elif val_type == 'float':
                    o_type = '.float'

                # If init_val is not a string (i.e. 'DYNAMIC' or 'TEMP'), change o_val to the value
                o_val = '0'
                if type(init_val) is not str:
                    o_val = str(init_val)

                data_section += '{:s}:\t{:s}\t{:s}\t# {:s} in original\n'\
                                .format(name, o_type, o_val, id)

        for string in self.array_sym_table:
            id_dict = self.array_sym_table[string]

            if id_dict['used']:
                name = id_dict['mem_name']
                o_type = id_dict['type']

                # string might have to be sanitized when using arrays
                data_section += '{:s}:\t{:s}\t{:s}\n'.format(name, o_type, string)

        # Prepend .data section instead of adding at beginning
        if data_section != '':
            data_section = '.data\n' + data_section

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

    def _save_off_tables(self):
        return deepcopy(self.sym_table), deepcopy(self.array_sym_table), deepcopy(self.reg_table), \
               deepcopy(self.aux_reg_table), deepcopy(self.float_reg_table), deepcopy(self.var_queue), \
               deepcopy(self.float_var_queue), deepcopy(self.block_var_edits)

    def _load_saved_tables(self, sym_table, array_sym_table, reg_table, aux_reg_table, float_reg_table, var_queue,
                           float_var_queue, og_block_var_edits):
        # Merge edited tables with parent's (Used for setting variables to dynamic and preserving 'used')
        new_block_var_edits = self.block_var_edits
        for mem_name in new_block_var_edits.keys():
            # Find dict in current sym_table
            new_dict = None
            for dict in self.sym_table.values():
                if dict['mem_name'] == mem_name:
                    new_dict = dict

            # Find dict in a symbol_table (since we cannot declare in a non-global block, this is fine)
            og_dict = None
            for dict in sym_table.values():
                if dict['mem_name'] == mem_name:
                    og_dict = dict

            for prop in new_block_var_edits[mem_name]:
                if prop == 'val_reg':
                    val_reg = new_dict['val_reg']

                    addr_reg = new_dict['addr_reg']
                    if not addr_reg:
                        # This uses a method that saves directly to the label (using a pseudoinstructino)
                        addr_reg = mem_name

                    # Save off variable
                    self.output_string += asm_save_mem_var_from_addr(addr_reg, val_reg)

                    # Require parent block to reload variable
                    og_dict['val_reg'] = None
                    og_dict['used'] = True
                elif prop == 'curr_val' and og_dict['curr_val'] != new_dict['curr_val']:
                    curr_val = new_dict['curr_val']
                    og_dict['used'] = True
                    og_dict['curr_val'] = None
                    self.output_string += asm_save_mem_var_from_addr(mem_name, curr_val)
                elif prop == 'used':
                    og_dict['used'] = new_dict['used'] or og_dict['used']
                elif prop == 'init_val':
                    og_dict['init_val'] = 'DYNAMIC'

        # Merge the array sym_tables
        for key in self.array_sym_table.keys():
            try:
                dict = array_sym_table[key]
                dict['used'] = dict['used'] or self.array_sym_table[key]['used']
            except KeyError:
                array_sym_table[key] = self.array_sym_table[key]

        # Reset tables to parent block values
        self.sym_table = sym_table
        self.array_sym_table = array_sym_table
        self.reg_table = reg_table
        self.aux_reg_table = aux_reg_table
        self.float_reg_table = float_reg_table
        self.var_queue = var_queue
        self.float_var_queue = float_var_queue
        self.block_var_edits = og_block_var_edits

    # Eventually, this will do all the scoping stuff
    def _block(self, tree_nodes, save_mode = False):
        saved_tables = None
        if save_mode:
            saved_tables = self._save_off_tables()
            self.block_var_edits = {}

        self._traverse(tree_nodes)

        if save_mode:
            self._load_saved_tables(*saved_tables)

    # Searches tree until it finds something to process
    def _traverse(self, tree):
        if self.tree.children:
            for child in tree.children:
                if child.label in self.func_factory:
                    self.func_factory[child.label](tree.children)
                    break
                else:
                    self._traverse(child)

    # Takes a list of id's and writes required code to read input into each
    def _read(self, tree_nodes):
        id_list = tree_nodes[1].children
        for ident in id_list:
            token = ident.token
            var_id = token.pattern
            id_dict = self._get_sym_table_entry(var_id, token)
            mem_name = id_dict['mem_name']

            if id_dict['type'] in {'string', 'bool'}:
                SemanticError.raise_incompatible_type(var_id, id_dict['type'], 'Read Function',
                                                      token.line_num, token.col)

            # Reset $v0
            self.aux_reg_table[self.val_0] = self._empty_aux_reg_dict()

            # Ensure variable is set to 'used' and prints out since we can't statically analyze it
            # (THIS MIGHT BE UNNECESSARY - TEST REMOVING IT)
            id_dict['used'] = True
            id_dict['init_val'] = 'DYNAMIC'

            # Set block edited fields
            self._edit_block_var_edit(mem_name, 'used')
            self._edit_block_var_edit(mem_name, 'init_val')

            input_reg = self.float_0 if id_dict['type'] == 'float' else self.val_0

            self.output_string += asm_read(id_dict['type']) # places input into $v0
            self._assign_id(var_id, input_reg)

    # Takes a list of expressions and correctly prints them
    def _write(self, tree_nodes):
        expr_lst = tree_nodes[1].children
        for expr in expr_lst:
            var_reg, var_type, var_token = self._process_expr_bool(expr.children)

            # Construct expr_type, which will control what's written out
            expr_reg = var_reg
            expr_type = 'string' if var_type in {'bool', 'string'} else var_type

            curr_v0 = self.aux_reg_table[self.val_0]['val']
            # If check_syscode is true, then edits need to be made
            if asm_check_syscode_write(expr_type, curr_v0):
                self.output_string += asm_set_syscode_write(expr_type)
                self.aux_reg_table[self.val_0]['id'] = None
                self.aux_reg_table[self.val_0]['val'] = asm_get_syscode_write(expr_type)
                self.aux_reg_table[self.val_0]['mem_name'] = None
                self.aux_reg_table[self.val_0]['mem_type'] = None

            # Tracking $a0
            is_a0_set = False

            # Convert bool to string for printing
            if var_type == 'bool':
                if type(expr_reg) is bool: # literal
                    # set expr_reg to the string and let the string conditional print it
                    expr_reg = self.bool_true_string if var_reg else self.bool_false_string
                else: # dynamically set
                    # Load both addresses of True and False
                    true_dict = self.array_sym_table[self.bool_true_string]
                    true_addr_reg = true_dict['addr_reg']
                    false_dict = self.array_sym_table[self.bool_false_string]
                    false_addr_reg = false_dict['addr_reg']

                    # Set both 'used' to true since we don't know which one will be used
                    true_dict['used'] = True
                    false_dict['used'] = True

                    # Ensure addresses are loaded
                    if true_addr_reg is None:
                        true_addr_reg = self._find_free_register()
                        self._update_reg_table('normal', self.bool_true_string, true_addr_reg, 'ARRAY_ADDRESS')
                        self.var_queue.append({'reg': true_addr_reg, 'id': self.bool_true_string,
                                               'mem_type': 'ARRAY_ADDRESS'})
                        true_dict['addr_reg'] = true_addr_reg
                        self.output_string += asm_load_mem_addr(true_dict['mem_name'], true_addr_reg)

                    if false_addr_reg is None:
                        false_addr_reg = self._find_free_register()
                        self._update_reg_table('normal', self.bool_false_string, false_addr_reg, 'ARRAY_ADDRESS')
                        self.var_queue.append({'reg': false_addr_reg, 'id': self.bool_false_string,
                                               'mem_type': 'ARRAY_ADDRESS'})
                        false_dict['addr_reg'] = false_addr_reg
                        self.output_string += asm_load_mem_addr(false_dict['mem_name'], false_addr_reg)

                    # Since this register will only be used in this function, with no other calls to _find_free_reg(),
                    # it does not have to be reserved, just cleared and made accessible
                    r_reg = self._find_free_register()
                    self.output_string += asm_dynamic_bool_print(r_reg, expr_reg, true_addr_reg, false_addr_reg)
                    expr_reg = r_reg

                    # Reset $a0
                    self.aux_reg_table[self.arg_0] = self._empty_aux_reg_dict()

            # If expr_reg is a string, we look it up and print using it's address
            if type(expr_reg) is str:
                # Get string
                sym_dict = self.array_sym_table[expr_reg]
                mem_name = sym_dict['mem_name']
                addr_reg = sym_dict['addr_reg']

                # Set string.'used' = True
                sym_dict['used'] = True

                # Ensure addr_reg is not None
                if addr_reg is None:
                    addr_reg = self._find_free_register()
                    self.var_queue.append({'reg': addr_reg, 'id': expr_reg, 'mem_type': 'ARRAY_ADDRESS'})
                    self._update_reg_table('normal', expr_reg, addr_reg, 'ADDRESS_ARRAY')
                    sym_dict['addr_reg'] = addr_reg
                    self.output_string += asm_load_mem_addr(mem_name, addr_reg)

                # Check if address is already in $a0
                a0_dict = self.aux_reg_table[self.arg_0]
                if a0_dict['val'] == expr_reg:
                    is_a0_set = True
                # Update $v0 otherwise
                else:
                    a0_dict['val'] = expr_reg
                    a0_dict['mem_type'] = 'ADDRESS'
                    expr_reg = addr_reg
            else: # then expr_reg is int or float
                a0_dict = self.aux_reg_table[self.arg_0]
                f12_dict = self.aux_reg_table[self.float_12]
                if type(expr_reg) is int or expr_type == 'int':
                    if a0_dict['val'] != expr_reg:
                        a0_dict['val'] = expr_reg
                        a0_dict['id'] = None
                        a0_dict['mem_type'] = None
                    else:
                        is_a0_set = True
                elif type(expr_reg) is float or expr_type == 'float':
                    if f12_dict['val'] != expr_reg:
                        f12_dict['val'] = expr_reg
                        f12_dict['id'] = None
                        f12_dict['mem_type'] = None
                    else:
                        is_a0_set = True

            self.output_string += asm_write(expr_reg, expr_type, is_a0_set)

    # Takes assign tree_nodes: with an ID on the left and some expression on the right
    # Initializes variable on the left, and evalutes RHS using '_expr_funct'
    def _assign(self, tree_nodes):
        # Get RHS result
        expr_id = None
        expr_reg, expr_type, expr_token = self._process_expr_bool(tree_nodes[0].children[1].children)

        # Get LHS variable
        token = tree_nodes[0].children[0].token
        ident = token.pattern
        id_dict = self._get_sym_table_entry(ident, token)
        mem_name = id_dict['mem_name']

        # Set init_val if first time calling
        if id_dict['init_val'] is None:
            if type(expr_reg) is Register:
                id_dict['init_val'] = 'DYNAMIC'
                self._edit_block_var_edit(mem_name, 'init_val')
            else:
                id_dict['init_val'] = expr_reg
                self._edit_block_var_edit(mem_name, 'init_val')

        # Throw type error
        id_type = id_dict['type']
        if  id_type != expr_type:
            # Coerce int into float (but not the other way around?)
            if id_type == 'float' and expr_type == 'int':
                if type(expr_reg) is not int:
                    # Reserve this just in case _assign_id removes it
                    expr_float_reg = self._find_free_register('float')
                    expr_temp_id = next(self.temp_id_generator)
                    self.float_var_queue.append({'reg': expr_float_reg, 'id': expr_temp_id, 'mem_type': 'TYPE.float'})
                    # Coerce next_type up
                    self.output_string += asm_cast_int_to_float(expr_float_reg, expr_reg)
                    # set expr_reg to be the new float_reg
                    expr_reg = expr_float_reg
                else:
                    expr_reg = float(expr_reg)
            else:
                SemanticError.raise_type_mismatch_error(ident, expr_token.pattern, id_type, expr_type,
                                                        expr_token.line_num, expr_token.col)

        # Run _assign_id
        self._assign_id(ident, expr_reg, expr_id)

    # Takes an id
    # Ensures that the id addr and val are initialized into registers
    # Returns nothing, since it should correctly equate values
    # (Either changing curr_val if RHS is an immediate, or
    def _assign_id(self, var_id, assn_reg, expr_id = None):
        id_dict = self.sym_table[var_id]
        var_type = id_dict['type']
        mem_name = id_dict['mem_name']
        addr_reg = id_dict['addr_reg']
        val_reg = id_dict['val_reg']
        init_val = id_dict['init_val']
        curr_val = id_dict['curr_val']

        # Mark this variable as being a 'dynamic' variable out of the scope of this block
        self._edit_block_var_edit(mem_name, 'curr_val')
        self._edit_block_var_edit(mem_name, 'used')

        python_assn_type = type(assn_reg)
        if python_assn_type is Register:
            curr_val = id_dict['curr_val'] = None
        elif python_assn_type is int and var_type == 'int':
            curr_val = id_dict['curr_val'] = assn_reg
        elif python_assn_type is float and var_type == 'float':
            curr_val = id_dict['curr_val'] = assn_reg
        elif python_assn_type is bool and var_type == 'bool':
            curr_val = id_dict['curr_val'] = assn_reg
        elif python_assn_type is str and var_type == 'string':
            curr_val = id_dict['curr_val'] = assn_reg

        # Only load variable into memory if there is no curr_val (i.e. the compiler can't do static analysis)
        if curr_val is None:
            self._edit_block_var_edit(mem_name, 'val_reg')

            # Set id to be printed out to MIPS
            id_dict['used'] = True

            # Load variable addr and val into registers
            if not val_reg:
                type_str = 'float' if var_type == 'float' else 'normal'
                val_var_queue = self.float_var_queue if var_type == 'float' else self.var_queue

                val_reg = self._find_free_register(type_str)
                self._update_tables(type_str, var_id, addr_reg, val_reg, id_dict)

                if not addr_reg:
                    addr_reg = self._find_free_register()
                    self._update_tables(type_str, var_id, addr_reg, val_reg, id_dict)
                    self.var_queue.append({'reg': addr_reg, 'id': var_id, 'mem_type': 'ADDRESS'})
                    self._edit_block_var_edit(mem_name, 'addr_reg')
                    self.output_string += asm_load_mem_addr(mem_name, addr_reg)

                # Since it is less work to pop an addr register from the queue, I would rather push that first
                # (if necessary), and then push the value register
                val_var_queue.append({'reg': val_reg, 'id': var_id, 'mem_type': 'VALUE'})

                self.output_string += asm_load_mem_var_from_addr(addr_reg, val_reg)

            # Ensure expr_id is loaded (if not None)
            if expr_id:
                assn_reg = self._ensure_id_loaded(expr_id, assn_reg)

            # Equate registers (move assn_reg value into val_reg)
            self.output_string += asm_reg_set(val_reg, assn_reg)

    # Needs to initialize an identifier's symbol table
    # Update: type, mem_name, init_val, curr_val, addr_reg, var_reg (unless value can be statically analyzed)
    # Returns nothing
    # Code for handling variable declarations
    # Needs to create the symbol table
    # All calls to the symbol table need to be in try/catch statements
    # if an error is thrown, redirect to throw semantic error?
    # Load into memory
    # Grab empty symbol table and edit types
    # sym_table[id] = empty table?
    def _declare(self, tree_nodes):
        # The type is the first child of declare and the
        # declaration list is the second
        var_type = tree_nodes[0].children[0].token.name.lower()
        decl_list = tree_nodes[0].children[1].children

        # Need to go through the list of ids being declared
        for term in decl_list:
            self._process_declare_term(term.children, var_type)

    # Used to run individual declare statements
    def _process_declare_term(self, children, var_type):
        # Get var_id and reserve MIPS name
        token = children[0].token
        var_id = token.pattern

        # Checks if var_id is already initialized
        # If it isn't, simply suppress KeyError
        # If no KeyError, raise SemanticError
        try:
            self.sym_table[var_id]
            SemanticError.raise_already_declared_error(var_id, token.line_num, token.col)
        except KeyError:
            pass

        mem_name = next(self.var_name_generator)

        # Clean up the type and get correct var_queue for variable type
        clean_type = 'float' if var_type == 'float' else 'normal'
        var_queue = self.float_var_queue if clean_type == 'float' else self.var_queue

        # Default to None
        curr_val = None
        init_val = None
        val_reg = None
        addr_reg = None

        # If declaration includes an assignment (to expr_bool)
        if len(children) > 1:
            expr_reg, expr_type, expr_token = self._process_expr_bool(children[1].children)

            # Raise SemanticError on type mismatch
            if expr_type != var_type:
                # Coerce int into float (but not the other way around?)
                if var_type == 'float' and expr_type == 'int':
                    if type(expr_reg) is not int:
                        # Reserve this just in case _assign_id removes it
                        expr_float_reg = self._find_free_register('float')
                        expr_temp_id = next(self.temp_id_generator)
                        self.float_var_queue.append({'reg': expr_float_reg, 'id': expr_temp_id, 'mem_type': 'TYPE.float'})
                        # Coerce next_type up
                        self.output_string += asm_cast_int_to_float(expr_float_reg, expr_reg)
                        # set expr_reg to be the new float_reg
                        expr_reg = expr_float_reg
                    else:
                        expr_reg = float(expr_reg)
                else:
                    SemanticError.raise_type_mismatch_error(var_id, expr_token.pattern, var_type, expr_type,
                                                            expr_token.line_num, expr_token.col)

            # Check for immediates
            if type(expr_reg) is not Register:
                curr_val = init_val = expr_reg
                val_reg = None
            else: # If not, load address and variable registers and equate
                init_val = 'DYNAMIC'

                # Load addr_reg
                addr_reg = self._find_free_register(clean_type)
                var_queue.append({'reg': addr_reg, 'id': var_id, 'mem_type': 'ADDRESS'})
                self._update_reg_table(clean_type, var_id, addr_reg, 'ADDRESS')

                # Load var_reg
                val_reg = self._find_free_register(clean_type)
                var_queue.append({'reg': val_reg, 'id': var_id, 'mem_type': 'VALUE'})
                self._update_reg_table(clean_type, var_id, val_reg, 'VALUE')

                self.output_string += asm_reg_set(val_reg, expr_reg)

        var_dict = self._empty_sym_table_dict()
        var_dict['addr_reg'] = addr_reg
        var_dict['val_reg'] = val_reg
        var_dict['type'] = var_type
        var_dict['mem_name'] = mem_name
        var_dict['curr_val'] = curr_val
        var_dict['init_val'] = init_val
        self.sym_table[var_id] = var_dict

    def _process_if(self, tree_nodes):
        if_children = tree_nodes[0]

        # Grab conditional, if block, and else block
        conditional_expr = if_children.children[1]
        if_block = if_children.children[3]
        else_block = if_children.children[5] if len(if_children.children) > 4 else None

        # Generate labels
        block_label = next(self.conditional_name_generator)
        if_label = block_label + '_if'
        else_label = block_label + '_else'
        end_label = block_label + '_end'

        # Process conditional
        cond_reg, cond_type, cond_token = self._process_expr_bool(conditional_expr.children)
        if cond_type != 'bool':
            SemanticError.raise_incompatible_type(cond_token.pattern, cond_type, 'conditional blocks',
                                                  cond_token.line_num, cond_token.col)
        self.output_string += asm_conditional_check(cond_reg, end_label if else_block is None else else_label)

        # Process if block
        self.output_string += if_label + ':\n'
        self._block(if_block, True)

        # Process else block
        if else_block:
            self.output_string += asm_branch_to_label(end_label)
            self.output_string += else_label + ':\n'
            self._block(else_block, True)

        self.output_string += end_label + ':\n'

    # Used for expressions
    # Returns the register that has the value of accum_id loaded
    def _ensure_id_loaded(self, curr_id, curr_reg):
        # Assume curr_reg is correct
        id_reg = curr_reg

        # Get register type
        clean_type = 'float' if 'f' in str(curr_reg) else 'normal'
        val_var_queue = self.float_var_queue if clean_type == 'float' else self.var_queue

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
                # Ensure 'used' is checked
                # If it was removed from a register, and we had to load it again, it means we need it written down
                id_dict['used'] = True

                id_reg = self._find_free_register(clean_type)
                val_var_queue.append({'reg': id_reg, 'id': curr_id, 'mem_type': 'VALUE'})
                self._update_tables(clean_type, curr_id, None, id_reg, id_dict)

                # If addr_reg is none
                if not addr_reg:
                    addr_reg = self._find_free_register()
                    self.var_queue.append({'reg': addr_reg, 'id': curr_id, 'mem_type': 'ADDRESS'})
                    self._update_tables(clean_type, curr_id, addr_reg, id_reg, id_dict)

                    # Load address into addr_reg
                    self.output_string += asm_load_mem_addr(mem_name, addr_reg)

                # Load id_reg from addr_reg
                self.output_string += asm_load_mem_var_from_addr(addr_reg, id_reg)

        return id_reg

    # Used for expressions
    # Returns the newly reserved accum_register
    def _init_val_reg(self, mem_id, curr_reg, curr_type):
        cleaned_type = 'float' if curr_type == 'float' else 'normal'
        var_queue = self.float_var_queue if cleaned_type == 'float' else self.var_queue

        # Initialize val_reg
        accum_reg = self._find_free_register(cleaned_type)

        # Add to var_queue
        var_queue.append({'reg': accum_reg, 'id': mem_id, 'mem_type': 'TYPE.' + str(curr_type)})

        # Reserve accum_reg
        self._update_reg_table(cleaned_type, mem_id, accum_reg, 'VALUE')

        # Equate val_reg and curr_reg
        self.output_string += asm_reg_set(accum_reg, curr_reg)

        return accum_reg

    # Abstraction of <expr> functions
    # children = tree_nodes
    # children_function == function to process children
    # body_function == function that runs logic (must return val_reg, immediate_val)
    # - must ensure that both val_reg and next_reg are loaded at proper times
    # - must take (tree_nodes, accum_id, val_reg, val_type, val_token, immediate_val, next_reg, next_type, next_token)
    #   as parameters
    # tail function:
    # - accum_id, val_reg, val_type, val_token, immediate_val as children
    def _process_expr_skeleton(self, children, children_function, body_function, tail_function):
        # If len(children) == 1 on any expression function, it means the expression just drops through to a lower one
        # Thus, we can just return exactly whatever returned from the one below
        if len(children) == 1:
            return children_function(children[0].children)
        else:
            # Reserve accum_id
            accum_id = next(self.temp_id_generator)
            immediate_val = None
            val_reg = None

            temp_reg, val_type, val_token = children_function(children[0].children)
            if type(temp_reg) in {int, float, bool, str}:
                immediate_val = temp_reg
            else: # Register
                val_reg = self._init_val_reg(accum_id, temp_reg, val_type)

            # Run the body function of the expression
            for i in range(1, len(children), 2):
                # Get RHS
                next_reg, next_type, next_token = children_function(children[i+1].children)

                # Save off next_id
                next_id = None
                if type(next_reg) is Register:
                    reg_table = self.float_reg_table if 'f' in str(next_reg) else self.reg_table
                    next_id = reg_table[next_reg]['id']

                # Ensure val_reg is loaded
                val_reg = self._ensure_id_loaded(accum_id, val_reg)

                # Ensure next_reg is loaded
                if next_id:
                    next_reg = self._ensure_id_loaded(next_id, next_reg)

                val_reg, immediate_val, val_type = \
                    body_function(accum_id, val_reg, val_type, val_token, immediate_val, children[i], next_reg, next_type, next_token)

            # Run a tail call if necessary
            val_reg, immediate_val, val_type = tail_function(accum_id, val_reg, val_type, val_token, immediate_val)

            if not val_reg:
                return immediate_val, val_type, val_token
            else:
                return val_reg, val_type, val_token

    # <expr_bool>     ->  <term_bool> { <log_or> <term_bool> }
    def _process_expr_bool(self, tree_nodes):
        def expr_bool_body(accum_id, val_reg, val_type, val_token, immediate_val,
                           oper, next_reg, next_type, next_token):
            # Check if val_reg is a bool
            if val_type != 'bool':
                SemanticError.raise_incompatible_type(val_token.pattern, val_type, 'Boolean OR',
                                                      val_token.line_num, val_token.col)

            # Check if next_reg is also a bool
            if next_type != 'bool':
                SemanticError.raise_type_mismatch_error(val_token.pattern, next_token.pattern, val_type, next_type,
                                                        val_token.line_num, val_token.col)

            # Add them up
            if type(next_reg) is bool: # static analysis
                if immediate_val is None:
                    immediate_val = next_reg
                else:
                    immediate_val = immediate_val or next_reg
            else: # MIPS
                self.output_string += asm_log_or(val_reg, val_reg, next_reg)

            return val_reg, immediate_val, val_type

        def expr_bool_tail(accum_id, val_reg, val_type, val_token, immediate_val):
             # OR immediates and non-immediates together
            if immediate_val is not None and val_reg is not None:
                self.output_string += asm_log_or(val_reg, val_reg, immediate_val)

            return val_reg, immediate_val, val_type

        return self._process_expr_skeleton(tree_nodes, getattr(self, '_process_term_bool'), expr_bool_body,
                                           expr_bool_tail)

    # <term_bool>     ->  <expr_eq> { <log_and> <expr_eq> }
    # Returns value register (or immediate), value type, and token
    def _process_term_bool(self, tree_nodes):
        def term_bool_body(accum_id, val_reg, val_type, val_token, immediate_val, oper, next_reg, next_type,
                           next_token):
            # Check if val_reg is a bool
            if val_type != 'bool':
                SemanticError.raise_incompatible_type(val_token.pattern, val_type, 'Boolean AND',
                                                      val_token.line_num, val_token.col)

            # Check if next_reg is also a bool
            if next_type != 'bool':
                SemanticError.raise_type_mismatch_error(val_token.pattern, next_token.pattern, val_type, next_type,
                                                        val_token.line_num, val_token.col)

            # Add them up
            if type(next_reg) is bool: # static analysis
                if immediate_val is None:
                    immediate_val = next_reg
                else:
                    immediate_val = immediate_val and next_reg
            else: # Code evaluation
                if val_reg is None:
                    val_reg = self._init_val_reg(accum_id, next_reg, val_type)
                else:
                    self.output_string += asm_log_and(val_reg, val_reg, next_reg)

            return val_reg, immediate_val, val_type

        def term_bool_tail(accum_id, val_reg, val_type, val_token, immediate_val):
            # AND immediates and non-immediates together
            if immediate_val is not None and val_reg is not None:
                self.output_string += asm_log_and(val_reg, val_reg, immediate_val)

            return val_reg, immediate_val, val_type

        return self._process_expr_skeleton(tree_nodes, getattr(self, '_process_expr_eq'), term_bool_body,
                                           term_bool_tail)

    # <expr_eq>       ->  <expr_relation> [ <equal_op> <expr_relation> ]
    # Returns value register (or immediate), value type, and token
    def _process_expr_eq(self, tree_nodes):
        def expr_eq_body(accum_id, val_reg, val_type, val_token, immediate_val, oper, next_reg, next_type, next_token):
            # Save off operator
            equal_op = oper.token.name

            # We set '==' and '!=' to be hard type checkers, so we don't need to worry about type coercion
            # I want to eventually add '=', and '!=' for soft equality checking and '==' and '!==' for hard checking
            if val_type != next_type:
                immediate_val = False if equal_op == 'EQUAL' else True
                val_reg = None
            else:
                # Check if val_reg or immediate_val has value
                # Run immediate comparison or MIPS if val_reg
                if val_reg is None:
                    if type(next_reg) in {str, bool, int, float}: # Both are immediates
                        immediate_val = immediate_val == next_reg \
                            if equal_op == 'EQUAL' else immediate_val != next_reg
                    else:
                        val_reg = self._init_val_reg(accum_id, immediate_val, val_type)
                        self.output_string += asm_rel_eq(val_reg, val_reg, next_reg) \
                            if equal_op == 'EQUAL' else asm_rel_neq(val_reg, val_reg, next_reg)
                else: # val_reg and a register or immediate (overloads in assembly_helper for this)
                    self.output_string += asm_rel_eq(val_reg, val_reg, next_reg) \
                        if equal_op == 'EQUAL' else asm_rel_neq(val_reg, val_reg, next_reg)

            return val_reg, immediate_val, 'bool'

        return self._process_expr_skeleton(tree_nodes, getattr(self, '_process_expr_rel'), expr_eq_body,
                                           self._empty_tail_call)

    # <expr_relation> ->  <expr_arith> [ <rel_op> <expr_arith> ]
    # Returns value register (or immediate), value type, and token
    def _process_expr_rel(self, tree_nodes):
        def expr_rel_body(accum_id, val_reg, val_type, val_token, immediate_val, oper, next_reg, next_type, next_token):
            # Save off op
            rel_op = oper.label

            # If type is string or bool, throw incompatible type error
            if val_type not in {'int', 'float'}:
                SemanticError.raise_incompatible_type(val_token.pattern, val_type, 'Number Relationships',
                                                      val_token.line_num, val_token.col)

            if next_type not in {'int', 'float'}:
                SemanticError.raise_incompatible_type(next_token.pattern, next_type, 'Number Relationships',
                                                      next_token.line_num, next_token.col)

            # Check for static analysis
            if immediate_val is not None and type(next_reg) in {int, float}:
                if rel_op == 'GREATER':
                    return None, immediate_val > next_reg, 'bool'
                elif rel_op == 'LESS':
                    return None, immediate_val < next_reg, 'bool'
                elif rel_op == 'GREATER_EQUAL':
                    return None, immediate_val >= next_reg, 'bool'
                elif rel_op == 'LESS_EQUAL':
                    return None, immediate_val <= next_reg, 'bool'

            # first_reg defaults to val_reg or immediate_val depending on which one was set
            first_reg = immediate_val if not val_reg else val_reg

            # second_reg defaults to next_reg
            second_reg = next_reg

            # Ensure val_reg is loaded for return
            if not val_reg:
                cleaned_type = 'float' if val_type == 'float' else 'normal'
                var_queue = self.float_var_queue if cleaned_type == 'float' else self.var_queue

                val_reg = self._find_free_register(cleaned_type)
                var_queue.append({'reg': val_reg, 'id': accum_id, 'mem_type': 'TYPE.' + str(val_type)})
                self._update_reg_table(cleaned_type, accum_id, val_reg, 'VALUE')

            if val_type == 'int' and next_type == 'float':
                # We don't have to worry about reserving this register since normal val_reg will still hold the
                # return bool
                val_float_reg = self._find_free_register('float')

                # Coerce val_type up
                self.output_string += asm_cast_int_to_float(val_float_reg, val_reg)

                # set first_reg to be val_float_reg
                first_reg = val_float_reg
            elif val_type == 'float' and next_type == 'int':
                next_float_reg = self._find_free_register('float')

                # Coerce next_type up
                self.output_string += asm_cast_int_to_float(next_float_reg, val_reg)

                # set second_reg to be next_float_reg
                second_reg = next_float_reg

            if rel_op == 'GREATER':
                self.output_string += asm_rel_gt(val_reg, first_reg, second_reg)
            elif rel_op == 'LESS':
                self.output_string += asm_rel_lt(val_reg, first_reg, second_reg)
            elif rel_op == 'GREATER_EQUAL':
                self.output_string += asm_rel_ge(val_reg, first_reg, second_reg)
            elif rel_op == 'LESS_EQUAL':
                self.output_string += asm_rel_le(val_reg, first_reg, second_reg)

            return val_reg, immediate_val, 'bool'

        return self._process_expr_skeleton(tree_nodes, getattr(self, '_process_expr_arith'), expr_rel_body,
                                           self._empty_tail_call)

    # <expr_arith>    ->  <term_arith> { <unary_add_op> <term_arith> }
    # Returns value register (or immediate), value type, and token
    def _process_expr_arith(self, tree_nodes):
        def expr_arith_body(accum_id, val_reg, val_type, val_token, immediate_val, oper, next_reg, next_type,
                            next_token):
            # Load the operation
            oper = oper.label

            # Type check
            if val_type not in {'int', 'float'}:
                SemanticError.raise_incompatible_type(val_token.pattern, val_type, 'Arithmetic',
                                                      val_token.line_num, val_token.col)

            if next_type not in {'int', 'float'}:
                SemanticError.raise_incompatible_type(next_token.pattern, next_type, 'Arithmetic',
                                                      next_token.line_num, next_token.col)

            if type(next_reg) in {int, float}: # next_reg is an immediate
                # initialize immediate
                immediate_val = 0 if immediate_val is None else immediate_val

                if oper == 'PLUS':
                    immediate_val += next_reg
                elif oper == 'MINUS':
                    immediate_val -= next_reg
            elif not val_reg: # Initialize val_reg since not immediate
                # If next is a 'float', ensure we will initialize val_reg as one too
                if next_type == 'float':
                    val_type = 'float'

                if oper == 'PLUS':
                    val_reg = self._init_val_reg(accum_id, next_reg, val_type)
                elif oper == 'MINUS':
                    val_reg = self._init_val_reg(accum_id, next_reg, val_type)
                    # Multiply val_reg by -1
                    self.output_string += asm_multiply(val_reg, val_reg, -1)
            else: # add/sub (coerce types if necessary)
                # Coerce int to float
                if val_type == 'int' and next_type == 'float':
                    # We care if val_reg is changed to a float, since we're going to keep track of it
                    val_float_reg = self._find_free_register('float')

                    # Update sym_table (if available)
                    try:
                        id_dict = self.sym_table[accum_id]
                        id_dict['type'] = 'float'
                        id_dict['val_reg'] = val_float_reg
                        # id_dict['used'] = True
                    except KeyError:
                        pass

                    # Remove from normal var_queue
                    self.var_queue = [i for i in self.var_queue if i['id'] != accum_id]

                    # Add to float var_queue
                    self.float_var_queue.append({'reg': val_float_reg, 'id': accum_id, 'mem_type': 'TYPE.float'})

                    # Coerce val_type up
                    self.output_string += asm_cast_int_to_float(val_float_reg, val_reg)

                    # set first_reg to be val_float_reg
                    val_reg = val_float_reg
                    val_type = 'float'
                elif val_type == 'float' and next_type == 'int':
                    # We don't care to save this, so we'll just let it die once we're done with it
                    next_float_reg = self._find_free_register('float')
                    # Coerce next_type up
                    self.output_string += asm_cast_int_to_float(next_float_reg, next_reg)
                    # set second_reg to be next_float_reg
                    next_reg = next_float_reg

                if oper == 'PLUS':
                    self.output_string += asm_add(val_reg, val_reg, next_reg)
                elif oper == 'MINUS':
                    self.output_string += asm_sub(val_reg, val_reg, next_reg)

            return val_reg, immediate_val, val_type

        def expr_arith_tail(accum_id, val_reg, val_type, val_token, immediate_val):
            # Add up the immediate and val_reg if necessary
            if immediate_val is not None and immediate_val != 0 and val_reg is not None:
                self.output_string += asm_add(val_reg, val_reg, immediate_val)

            return val_reg, immediate_val, val_type

        return self._process_expr_skeleton(tree_nodes, getattr(self, '_process_term_arith'), expr_arith_body,
                                           expr_arith_tail)

    # <term_arith>    ->  <fact_arith> { <mul_op> <fact_arith> }
    # Returns value register (or immediate), value type, and token
    def _process_term_arith(self, tree_nodes):
        def term_arith_body(accum_id, val_reg, val_type, val_token, immediate_val, oper, next_reg, next_type,
                            next_token):
            # Initialize val_reg to immediate_val if necessary
            if val_reg is None: # else, val_reg is already good to go
                val_reg = self._init_val_reg(accum_id, immediate_val, val_type)

            # Load the operation
            oper = oper.label

            # Type checks
            if (val_type not in {'int', 'float'}) or (oper == 'MODULO' and val_type != 'int'):
                SemanticError.raise_incompatible_type(val_token.pattern, val_type, 'Arithmetic',
                                                      val_token.line_num, val_token.col)

            if (next_type not in {'int', 'float'}) or (oper == 'MODULO' and next_type != 'int'):
                SemanticError.raise_incompatible_type(next_token.pattern, next_type, 'Arithmetic',
                                                      next_token.line_num, next_token.col)

            # Coerce int to float
            if val_type == 'int' and next_type == 'float':
                # We care if val_reg is changed to a float, since we're going to keep track of it
                val_float_reg = self._find_free_register('float')

                # Update sym_table (if available)
                try:
                    id_dict = self.sym_table[accum_id]
                    id_dict['type'] = 'float'
                    id_dict['val_reg'] = val_float_reg
                    # id_dict['used'] = True
                except KeyError:
                    pass

                # Remove from normal var_queue
                self.var_queue = [i for i in self.var_queue if i['id'] != accum_id]

                # Add to float var_queue
                self.float_var_queue.append({'reg': val_float_reg, 'id': accum_id, 'mem_type': 'TYPE.float'})

                # Coerce val_type up
                self.output_string += asm_cast_int_to_float(val_float_reg, val_reg)

                # set first_reg to be val_float_reg
                val_reg = val_float_reg
                val_type = 'float'
            elif val_type == 'float' and next_type == 'int':
                # We don't care to save this, so we'll just let it die once we're done with it
                next_float_reg = self._find_free_register('float')
                # Coerce next_type up
                self.output_string += asm_cast_int_to_float(next_float_reg, next_reg)
                # set second_reg to be next_float_reg
                next_reg = next_float_reg

            # Just move all operations into accumulator (optimize later)
            # Immediates and register values are handled in asm methods
            if oper == 'MULTIPLY':
                self.output_string += asm_multiply(val_reg, val_reg, next_reg)
            elif oper == 'DIVIDE':
                self.output_string += asm_divide(val_reg, val_reg, next_reg)
            elif oper == 'MODULO':
                self.output_string += asm_modulo(val_reg, val_reg, next_reg)

            return val_reg, immediate_val, val_type

        return self._process_expr_skeleton(tree_nodes, getattr(self, '_process_fact_arith'), term_arith_body,
                                           self._empty_tail_call)

    # <fact_arith>    ->  <unary_op> <term_unary> | <unary_add_op> <term_unary> | <term_unary>
    # Returns value register (or immediate), value type, and token
    def _process_fact_arith(self, fact_children):
        # len(fact_node.children) = 1 or 2
        if len(fact_children) == 2:
            unary_op = fact_children[0].label

            accum_id = next(self.temp_id_generator)
            immediate_val = None
            val_reg = None

            temp_reg, val_type, val_token = self._process_term_unary(fact_children[1])
            if type(temp_reg) in {int, float, bool, str}:
                immediate_val = temp_reg
            else: # Register
                val_reg = self._init_val_reg(accum_id, temp_reg, val_type)

            if unary_op == 'PLUS':
                # Throw error if not numeric type; do nothing otherwise
                if val_type not in {'int', 'float'}:
                    SemanticError.raise_incompatible_type(val_token.pattern, val_type, 'Unary Numberical Operations',
                                                          val_token.line_num, val_token.col)
            elif unary_op == 'MINUS':
                # Throw type error
                if val_type not in {'int', 'float'}:
                    SemanticError.raise_incompatible_type(val_token.pattern, val_type, 'Unary Numerical Operations',
                                                          val_token.line_num, val_token.col)

                if not val_reg: # immediate_val holds value
                    immediate_val *= -1
                else: # could not be statically analyzed
                    self.output_string += asm_multiply(val_reg, val_reg, -1)
            elif unary_op == 'LOG_NEGATION':
                # Throw type error
                if val_type != 'bool':
                    SemanticError.raise_incompatible_type(val_token.pattern, val_type, 'Unary Boolean Opertions',
                                                          val_token.line_num, val_token.col)

                if not val_reg:
                    immediate_val = not immediate_val
                else:
                    self.output_string += asm_log_negate(val_reg, val_reg)

            if not val_reg:
                return immediate_val, val_type, val_token
            else:
                return val_reg, val_type, val_token
        else: # len(cildren) = 1
            return self._process_term_unary(fact_children[0])

    # <term_unary>    ->  <literals> | <ident> | (expr_bool)
    # Returns value register (or immediate), value type, and token
    def _process_term_unary(self, term_unary):
        # len(term_node) == 1
        child = term_unary.children[0]
        token = child.token
        if token:
            if token.t_class == 'LITERAL': # If token is a literal
                literal = token.pattern
                # Check int, float, bool, string literals
                if token.name == 'STRINGLIT':
                    # See if literal already in array_sym_table
                    try:
                        self.array_sym_table[literal]
                    except KeyError:
                        # Create new entry
                        str_dict = self._empty_array_sym_table_dict()
                        str_dict['mem_name'] = next(self.var_name_generator)
                        str_dict['type'] = '.asciiz'
                        self.array_sym_table[literal] = str_dict
                    return literal, 'string', token
                elif token.name == 'BOOLLIT':
                    return literal == 'True', 'bool', token
                elif token.name == 'INTLIT':
                    return int(literal), 'int', token
                elif token.name == 'FLOATLIT':
                    return float(literal), 'float', token
            elif token.t_class == 'IDENTIFIER': # If token is an id
                return self._process_id(token)
        else: # if token is <expr_bool>
            return self._process_expr_bool(child.children)

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
        init_val = id_dict['init_val']
        curr_val = id_dict['curr_val']

        cleaned_type = 'float' if var_type == 'float' else 'normal'
        val_var_queue = self.float_var_queue if cleaned_type == 'float' else self.var_queue

        # If not initialized, throw an error
        if init_val is None:
            SemanticError.raise_initialization_error(ident, token.line_num, token.col)

        # Check if curr_val is not None (thus, if we can just return it)
        if curr_val is not None:
            return curr_val, var_type, token
        # If the value of the variable is not in register, load it
        elif not val_reg:
            # If not, load the value into a register if the addr is already loaded
            if addr_reg:
                val_reg = self._find_free_register(cleaned_type)

                self._update_tables(cleaned_type, ident, addr_reg, val_reg, id_dict)
                val_var_queue.append({'reg': val_reg, 'id': ident, 'mem_type': 'VALUE'})
                self._edit_block_var_edit(mem_name, 'val_reg')

                self.output_string += asm_load_mem_var_from_addr(id_dict['addr_reg'], val_reg)
            # Worst case, you have to load both the addr and the value into registers
            else:
                addr_reg = self._find_free_register()
                self._update_tables(cleaned_type, ident, addr_reg, val_reg, id_dict)
                self.var_queue.append({'reg': addr_reg, 'id': ident, 'mem_type': 'ADDRESS'})
                self._edit_block_var_edit(mem_name, 'addr_reg')

                val_reg = self._find_free_register(cleaned_type)
                self._update_tables(cleaned_type, ident, addr_reg, val_reg, id_dict)
                val_var_queue.append({'reg': val_reg, 'id': ident, 'mem_type': 'VALUE'})
                self._edit_block_var_edit(mem_name, 'val_reg')

                self.output_string += asm_load_mem_var(mem_name, addr_reg, val_reg)
        # else: If val_reg was good to go, just return it

        # Set id to be printed out in MIPS if it couldn't be statically analyzed
        id_dict['used'] = True

        return val_reg, var_type, token
