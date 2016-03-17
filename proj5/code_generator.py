from tree import *
from MLparser import *
from assembly_helper import *

# Symbol Table (Keys are ID pattern, Values are Dicts themselve)
#  'type': Data type
#  'scope': Data scope
#  'mem_name": variable name for .data
#  'init_val': initial value (None if set with READ)
#  'curr_val': current value (None if used in an operation with a variable from READ)
#  'addr_reg': temporary register with memory address
#  'val_reg': temporary register with value

# Register Table (Keys are register names, Values are Dicts themselves)
#  'id': ID pattern
#  'type' : var type (used only for TEMP when creating new sym_table entry)
#  'mem_name': Variable name
#  'mem_type': Variable type (ADDRESS, VALUE, or TEMP)

# Var_Queue
#  Holds a {'reg': "...", 'id': "...", 'mem_name': "...", 'mem_type': "VALUE"|"ADDRESS"} dict
#  Push to back, pop from front

# Auxiliiary Reg Table (Keeps track registers not used for variables
# Keeps track of $v0, $v1, $a0, $a1
# Each value has:
# - 'id': ID pattern
# - 'val': current integer value in register
# - 'mem_name': Variable name
# - 'mem_type': Variable type

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

class SemanticError(Exception):
    @staticmethod
    def raise_initialization_error(variable, line, col):
        raise SemanticError('Semantic error: Line num: {:d}, column num: {:d}\n\t{:s} not initialized before use.'\
                            .format(line, col, variable))

    def __init__(self, msg):
        self.msg = msg

    def __str__(self):
        return self.msg


class CodeGenerator():
    """Object that takes a parse tree, symbol table, and output file,
    and has methods to compile the parse tree to asm"""

    @staticmethod
    def _empty_reg_dict():
        return {'id': None, 'type': None, 'mem_name': None, 'mem_type': None}

    @staticmethod
    def _empty_aux_reg_dict():
        return {'id': None, 'val': None, 'mem_name': None, 'mem_type': None}

    def __init__(self, parse_tree, symbol_table, output_filename, is_safe):
        self.func_factory = {"READ": self._read_id, "WRITE": self._write_id, "ASSIGN": self._assign,
                        "EXPRESSION": self._expr_func, "ID": self._process_id}
        self.tree = parse_tree
        self.sym_table = symbol_table
        self.reg_table = {'$t0': CodeGenerator._empty_reg_dict(), '$t1': CodeGenerator._empty_reg_dict(),
                          '$t2': CodeGenerator._empty_reg_dict(), '$t3': CodeGenerator._empty_reg_dict(),
                          '$t4': CodeGenerator._empty_reg_dict(), '$t5': CodeGenerator._empty_reg_dict(),
                          '$t6': CodeGenerator._empty_reg_dict(), '$t7': CodeGenerator._empty_reg_dict(),
                          '$t8': CodeGenerator._empty_reg_dict(), '$t9': CodeGenerator._empty_reg_dict()}
        self.aux_reg_table = {'$v0': CodeGenerator._empty_aux_reg_dict(), '$v1': CodeGenerator._empty_aux_reg_dict(),
                              '$a0': CodeGenerator._empty_aux_reg_dict(), '$a1': CodeGenerator._empty_aux_reg_dict()}
        self.var_queue = []
        self.var_name_generator = variable_name_generator()
        self.temp_id_generator = temp_var_id_generator()
        self.output_name = output_filename
        self.output_string = ''
        self.safe_mode = is_safe;

    def compile(self):
        self._start()
        self._traverse(self.tree)
        self._finish()

    def _traverse(self, tree):
        if self.tree.children:
            for child in tree.children:
                if child.label in self.func_factory:
                    self.func_factory[child.label](tree.children)
                    break
                else:
                    self._traverse(child)

    def _find_free_register(self):
        # Look for open register
        for reg in self.reg_table:
            if not self.reg_table[reg]['id']:
                return reg

        # If none are open, free up a register
        reg_pop = self.var_queue.pop(0)

        id = reg_pop['id']
        reg = reg_pop['reg']

        # If the register stores an address, just update tables
        if reg_pop['mem_type'] == 'ADDRESS':
            id_dict = self.sym_table[id]
            # Remove old references
            id_dict['addr_reg'] = None
            self.reg_table[reg] = CodeGenerator._empty_reg_dict()
        elif reg_pop['mem_type'] == 'VALUE':
            id_dict = self.sym_table[id]
            # Save off variable to RAM
            # Try to find addr_reg, else free up a register
            name = id_dict['mem_name']
            addr_reg = id_dict['addr_reg']

            if not addr_reg:
                # If we are in safe mode, we need to save off the old value
                if self.safe_mode:
                    # Save $s0 value to stack
                    # Allocate stack space
                    self.output_string += asm_allocate_stack_space()

                    # We don't have to increment stack_offset since it would just be decremented at the end of this block
                    self.output_string += asm_save_reg_to_stack('$s0', 0)

                addr_reg = '$s0'

                # Load address to $s0
                self.output_string += asm_load_mem_addr(name, addr_reg)

                # Write value from val_reg to RAM
                self.output_string += asm_write_mem_addr(addr_reg, reg_pop['reg'])

                # If we are in safe_mode, we need to restore the old value
                if self.safe_mode:
                    # Reset $s0 to what it was before
                    self.output_string += asm_load_reg_from_stack('$s0', 0)
            else:
                # Write value from val_reg to RAM
                self.output_string += asm_write_mem_addr(addr_reg, reg_pop['reg'])

            # Remove old references in symbol and register tables
            id_dict['val_reg'] = None
            self.reg_table[reg] = CodeGenerator._empty_reg_dict()
        elif reg_pop['mem_type'] == 'TEMP': # mem_type = TEMP
            reg_dict = self.reg_table[reg]
            # If we get here, it means we have to add our temporary variable to the sym_table and write it as a .data
            # variable

            # Generate name
            name = next(self.var_name_generator)

            # Get address into $s0 to save off
            ##############################################################
            # If we are in safe mode, we need to save off the old value
            if self.safe_mode:
                # Save $s0 value to stack
                # Allocate stack space
                self.output_string += asm_allocate_stack_space()

                # We don't have to increment stack_offset since it would just be decremented at the end of this block
                self.output_string += asm_save_reg_to_stack('$s0', 0)

            addr_reg = '$s0'

            # Load address to $s0
            self.output_string += asm_load_mem_addr(name, addr_reg)

            # Write value from val_reg to RAM
            self.output_string += asm_write_mem_addr(addr_reg, reg_pop['reg'])

            # If we are in safe_mode, we need to restore the old value
            if self.safe_mode:
                # Reset $s0 to what it was before
                self.output_string += asm_load_reg_from_stack('$s0', 0)
            ##############################################################

            # Update reg_table
            self.reg_table[reg] = CodeGenerator._empty_reg_dict()

            # Update sym_table
            # We can assume any variable being entered this way has, in some way, its value based on user input
            self.sym_table[id] = {'type': reg_dict['type'], 'scope': None, 'mem_name': name, 'init_val': None,
                                      'curr_val': None, 'addr_reg': None, 'val_reg': None}

            # Update reg_table
        return reg

    # Will update tables to reflect the changes made to val_reg and addr_reg
    # Even though this may call more updates than necessary, just use it to ensure everything is updated
    # This WILL NOT update if passed registers are None. Instead, manually remove them yourself (might make a separate
    #  method for this later)
    # DOES NOT update var_queue, that is up to you
    def _update_tables(self, id, new_addr_reg, new_val_reg, id_dict = None, addr_reg_dict = None, val_reg_dict = None):
        # Null Checks
        if not id_dict:
            id_dict = self.sym_table[id]
        if not addr_reg_dict and new_addr_reg:
            addr_reg_dict = self.reg_table[new_addr_reg]
        if not val_reg_dict and new_val_reg:
            val_reg_dict = self.reg_table[new_val_reg]

        # Edit addr_reg dict
        if new_addr_reg:
            addr_reg_dict['id'] = id
            addr_reg_dict['mem_name'] = id_dict['mem_name']
            addr_reg_dict['mem_type'] = 'ADDRESS'

            id_dict['addr_reg'] = new_addr_reg

        # Edit val_reg dict
        if new_val_reg:
            val_reg_dict['id'] = id
            val_reg_dict['mem_name'] = id_dict['mem_name']
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

            type = id_dict['type']
            scope = id_dict['scope']
            name = id_dict['mem_name']
            init_val = id_dict['init_val']

            # Variables can only be integers right now
            # CHANGE THIS WHEN MORE TYPES ARE ADDED
            o_type = '.word'

            data_section += '{:s}:\t{:s}\t{:d}\t# {:s} in original\n'.format(name, o_type, init_val if init_val else 0, id)

        self.output_string = data_section + self.output_string

        # Write file
        fp = open(self.output_name, 'w')
        fp.write(self.output_string)
        fp.close()

        # Debug
        print('Symbol Table: ', self.sym_table, '\n')
        print('Register Table: ', self.reg_table, '\n')
        print('Auxiliary Register Table', self.aux_reg_table, '\n')
        print('Variable Queue: ', self.var_queue, '\n')

    def _read_id(self, tree_nodes):
        id_list = tree_nodes[1].children
        for ident in id_list:
            id = ident.children[0].token.pattern

            # Eventually, read will NOT be handling initialization of variables, so
            # we will not have to manually tell it to do an int
            # We will be able to just run _process_id and check the type
            self.output_string += asm_read('int') # places input into $v0

            # id_type is redundant here (maybe not even assign it)
            # Eventually, replace $v0 with a register object
            id_reg, id_type = self._assign_id(id, '$v0')

    def _write_id(self, tree_nodes):
        expr_lst = tree_nodes[1].children
        for expr in expr_lst:
            reg, var_type = self._expr_func(expr.children)
            curr_v0 = self.aux_reg_table['$v0']['val']
            if asm_check_syscode_write(var_type, curr_v0):
                self.output_string += asm_set_syscode_write(var_type)
                self.aux_reg_table['$v0']['id'] = None
                self.aux_reg_table['$v0']['val'] = asm_get_syscode_write(var_type)
                self.aux_reg_table['$v0']['mem_name'] = None
                self.aux_reg_table['$v0']['mem_type'] = None
            self.output_string += asm_write(reg, var_type)
    
    # Takes an id
    # Ensures that the id addr and val are initialized into registers
    # Returns either the curr_val of the id or the register if it could not be statically analyzed along with the
    # id type
    def _assign_id(self, id, assn_reg):
        id_dict = self.sym_table[id]

        var_type = id_dict['type']
        name = id_dict['mem_name']
        addr_reg = id_dict['addr_reg']
        val_reg = id_dict['val_reg']
        curr_val = id_dict['curr_val']

        # If not initiliazed, pick a name and set properties
        if not name:
            name = next(self.var_name_generator)
            id_dict['mem_name'] = name

            # Since this is the first time the variable is declared,
            # the initial value property can be set to an INTLITERAL
            if isinstance(assn_reg, int):
                id_dict['init_val'] = assn_reg
                id_dict['curr_val'] = assn_reg
                return curr_val, var_type # no longer have to process the rest of the method
            # Do a similar thing for STRLITERALS, BYTELITERALS, SHORTLITERALS, etc

        # Reassign 'curr_val' to what the current assignment is
        # (INTLITERAL gives a value for 'curr_val' and register makes 'curr_val' None)
        python_assn_type = type(assn_reg)
        if python_assn_type is str: # Change this to check for register type instead of string
            id_dict['curr_val'] = None
        elif python_assn_type is int and var_type == 'int':
            id_dict['curr_val'] = assn_reg
        # Do a similar thing for STRLITERALS, BYTELITERALS, SHORTLITERALS, etc

        # Only load variable into memory if there is no curr_val (i.e. the compiler can't do sttic analysis)
        if not curr_val:
            # Load variable addr and val into registers
            if not val_reg:
                val_reg = self._find_free_register()
                self._update_tables(id, addr_reg, val_reg, id_dict)

                if not addr_reg:
                    addr_reg = self._find_free_register()
                    self._update_tables(id, addr_reg, val_reg, id_dict)
                    self.var_queue.append({'reg': addr_reg, 'id': id, 'mem_name': name, 'mem_type': 'ADDRESS'})
                    self.output_string += asm_load_mem_addr(name, addr_reg)

                # Since it is less work to pop an addr register from the queue, I would rather push that first
                # (if necessary), and then push the value register
                self.var_queue.append({'reg': val_reg, 'id': id, 'mem_name': name, 'mem_type': 'VALUE'})

                self.output_string += asm_read_mem_addr(addr_reg, val_reg)

            # Equate registers (move assn_reg value into val_reg
            self.output_string += asm_reg_set(val_reg, assn_reg)

        return (curr_val, 'int') if curr_val else (val_reg, var_type)

    # Takes assign tree_nodes: with an ID on the left and some expression on the right
    # Initializes variable on the left, and evalutes RHS using '_expr_funct'
    def _assign(self, tree_nodes):
        # Get RHS result
        expr_reg, expr_type = self._expr_func(tree_nodes[0].children[1].children)

        # Get LHS variable
        id = tree_nodes[0].children[0].children[0].token.pattern

        # Run _initialize_id
        id_reg, id_type = self._assign_id(id, expr_reg)

        # Assign LHS to RHS
        # if id_reg is a register, we need to equate the values
        # If not, we assume curr_val was correctly changed in _assign_id
        if type(id_reg) == 'str': # change this to pointer type!
            self.output_string += asm_reg_set(id_reg, expr_reg)

    # Takes a sequence of primary tokens and arith_ops
    # Checks that all variables are initialized
    # Does any addition/subtraction required
    # Returns a pair: the register of the result or the INTLITERAL itself if it could be discerned,
    # and the type of the variable
    def _expr_func(self, tree_nodes):
        if len(tree_nodes) == 1: # then tree_nodes is a single PRIMARY
            return self._process_primary(tree_nodes[0])
        else: # PRIMARY +/- PRIMARY +/- ... +/- PRIMARY
            # Keep a running total of all values that the compiler knows and can just add together
            immediate = 0
            immediate_type = None

            # Keep a register to store intermediate calculations (Only initialized if necessary)
            result_reg = None
            result_type = None

            # Look at first three tree_nodes for the original operation
            f_reg, f_type = self._process_primary(tree_nodes[0])
            oper = tree_nodes[1].label
            s_reg, s_type = self._process_primary(tree_nodes[2])

            if f_type != s_type:
                # New Semantic Error (Type Mismatch)
                pass

            if type(f_reg) is int and type(s_reg) is int:
                if oper == 'PLUS':
                    immediate += f_reg + s_reg
                elif oper == 'MINUS':
                    immediate += f_reg - s_reg
                immediate_type = f_type
            else: # Initiate result_reg
                result_reg = self._find_free_register()
                result_type = f_type

                # Update reg_table manually
                temp_id = next(self.temp_id_generator)
                addr_reg_dict = self.reg_table[result_reg]
                addr_reg_dict['id'] = temp_id
                addr_reg_dict['type'] = result_type
                addr_reg_dict['mem_name'] = None # don't assign it a name unless we need to make a .data variable
                addr_reg_dict['mem_type'] = 'TEMP'
                self.var_queue.append({'reg': result_reg, 'id': temp_id, 'mem_name': None, 'mem_type': 'TEMP'})

                # Check if temp_id is in sym_table, if it is, get reg_value; if not, load it

                if oper == 'PLUS':
                    self.output_string += asm_add(result_reg, f_reg, s_reg)
                elif oper == 'MINUS':
                    self.output_string += asm_sub(result_reg, f_reg, s_reg)

            # Look at each additional two to change the previous result
            for i in range(3, len(tree_nodes) - 1, 2):
                oper = tree_nodes[i].label
                next_reg, next_type = self._process_primary(tree_nodes[i+1])

                if (not immediate_type and immediate_type != next_type) \
                        or (not result_type and result_type != next_type):
                    # Raise Semantic Error (Type Mismatch)
                    pass

                if type(next_reg) is int:
                    if oper == 'PLUS':
                        immediate += next_reg
                    elif oper == 'MINUS':
                        immediate -= next_reg
                    immediate_type = next_type
                else:
                    if not result_reg: # result_reg needs to be initialized
                        result_reg = self._find_free_register()
                        result_type = f_type

                        ###########################################
                        # Update reg_table manually
                        temp_id = next(self.temp_id_generator)
                        addr_reg_dict = self.reg_table[result_reg]
                        addr_reg_dict['id'] = temp_id
                        addr_reg_dict['type'] = result_type
                        addr_reg_dict['mem_name'] = None # don't assign name until we make .data variable
                        addr_reg_dict['mem_type'] = 'TEMP'
                        self.var_queue.append({'reg': result_reg, 'id': temp_id, 'mem_name': None, 'mem_type': 'TEMP'})
                        ###########################################

                    # Check if temp_id is in sym_table, if it is, get reg_value; if not, load it

                    if oper == 'PLUS':
                        self.output_string += asm_add(result_reg, result_reg, next_reg)
                    elif oper == 'MINUS':
                        self.output_string += asm_sub(result_reg, result_reg, next_reg)

            # Add parts together
            if not result_reg:
                # simply set immediate to return
                result_reg = immediate
                result_type = immediate_type
            elif immediate_type == result_type:
                # add these together in the register
                self.output_string += asm_add(result_reg, result_reg, immediate)
            else:
                # Throw semantic error (type mismatch)
                pass

            return result_reg, result_type

    # Takes a PRIMARY node
    # Processes the node to get the INTLITERAL, IDENT, or EXPRESSION
    # Loads whatever it is into memory (if necessary)
    # returns the (val_reg, type) pair that all these other methods return
    def _process_primary(self, primary_node):
        primary_children = primary_node.children

        primary_child = primary_children[0] # only one child
        if primary_child.label == 'INTLITERAL':
            return int(primary_child.token.pattern), 'int'
        elif primary_child.label == 'IDENT': # single IDENT
            return self._process_id(primary_child.children[0].token)
        else: # Single <expression>
            return self._expr_func(primary_children)

    # Takes a full ID token
    # Handles loading a variable's address and value into registers
    # Returns a pair of the value of the id or the register with it's value and the type of the variable (This is mainly
    # for _expr)
    # (Note: This will NOT force a variable to loaded into memory if the compiler can statically evaluate the value)
    def _process_id(self, token):
        id = token.pattern
        id_dict = self.sym_table[id]

        var_type = id_dict['type']
        name = id_dict['mem_name']
        addr_reg = id_dict['addr_reg']
        val_reg = id_dict['val_reg']
        curr_val = id_dict['curr_val']

        # Raise error if id has not been defined
        if not name:
            SemanticError.raise_initialization_error(id, token.line_num, token.col)
        # Check if curr_val is not None (thus, if we can just return it)
        elif curr_val:
            return curr_val, 'int'
        # If the value of the variable is in a register already, just return it
        elif val_reg:
            return val_reg, var_type
        # If not, load the value into a register if the addr is already loaded
        elif addr_reg:
            val_reg = self._find_free_register()

            self._update_tables(id, addr_reg, val_reg, id_dict)
            self.var_queue.append({'reg': val_reg, 'id': id, 'mem_name': name, 'mem_type': 'VALUE'})

            self.output_string += asm_read_mem_addr(id_dict['addr_reg'], val_reg)
        # Worst case, you have to load both the addr and the value into registers
        else:
            addr_reg = self._find_free_register()
            self._update_tables(id, addr_reg, val_reg, id_dict)
            self.var_queue.append({'reg': addr_reg, 'id': id, 'mem_name': name, 'mem_type': 'ADDRESS'})

            val_reg = self._find_free_register()
            self._update_tables(id, addr_reg, val_reg, id_dict)
            self.var_queue.append({'reg': val_reg, 'id': id, 'mem_name': name, 'mem_type': 'VALUE'})

            self.output_string += asm_read_mem(name, addr_reg, val_reg)

        return val_reg, var_type
