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
#  'mem_name': Variable name
#  'mem_type': Variable type (address or value)

# Var_Queue
#  Holds a {'reg': "...", 'id': "...", 'mem_name': "...", 'mem_type': "VALUE"|"ADDRESS"} dict
#  Push to back, pop from front

# Courtesy of from Dr. Karro
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
        return {'id': None, 'mem_name': None, 'mem_type': None}

    def __init__(self, parse_tree, symbol_table, output_filename):
        self.func_factory = {"READ": self._read_id, "WRITE": self._write_id, "ASSIGN": self._assign,
                        "EXPRESSION": self._expr_func, "ID": self._process_id}
        self.tree = parse_tree
        self.sym_table = symbol_table
        self.reg_table = {'$t0': CodeGenerator._empty_reg_dict(), '$t1': CodeGenerator._empty_reg_dict(),
                          '$t2': CodeGenerator._empty_reg_dict(), '$t3': CodeGenerator._empty_reg_dict(),
                          '$t4': CodeGenerator._empty_reg_dict(), '$t5': CodeGenerator._empty_reg_dict(),
                          '$t6': CodeGenerator._empty_reg_dict(), '$t7': CodeGenerator._empty_reg_dict(),
                          '$t8': CodeGenerator._empty_reg_dict(), '$t9': CodeGenerator._empty_reg_dict()}
        self.var_queue = []
        self.var_name_generator = variable_name_generator()
        self.output_name = output_filename
        self.output_string = ''

    def compile(self):
        self._start()
        self._traverse(self.tree)
        self._finish()

    def _traverse(self, tree):
        if self.tree.children:
            for child in tree.children:
                if child.label in self.func_factory:
                    self.func_factory[child.label](tree.children)
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
        id_dict = self.sym_table[id]
        reg = reg_pop['reg']

        # If the register stores an address, just update tables
        if reg_pop['mem_type'] == 'ADDRESS':
            # Remove old references
            id_dict['addr_reg'] = None
            self.reg_table[reg] = CodeGenerator._empty_reg_dict()
        else:
            # Save off variable to RAM
            # Try to find addr_reg, else free up a register
            addr_reg = id_dict['addr_reg']

            if not addr_reg:
                addr_reg = self._find_free_register()
                self._update_tables(id, addr_reg, id_dict['val_reg'], id_dict)
                self.output_string += asm_load_mem_addr(id, addr_reg)

            self.output_string += asm_write_mem_addr(addr_reg, reg_pop[0])

            # Remove old references
            id_dict['val_reg'] = None
            self.reg_table[reg] = CodeGenerator._empty_reg_dict()

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
        print('Variable Queue: ', self.var_queue, '\n')

    def _read_id(self, tree_nodes):
        print('Read', tree_nodes)

    def _write_id(self, tree_nodes):
        print('Write')
        # this may need to create temporary variables for printing (or it could just create the temp variable, print it
        # and reuse that memory space)

    # Takes assign tree_nodes: with an ID on the left and some expression on the right
    # Initializes variable on the left, and evalutes RHS using '_expr_funct'
    def _assign(self, tree_nodes):
        # Get RHS result
        expr, expr_type = self._expr_func(tree_nodes[0].children[1].children)

        # Get LHS variable
        id = tree_nodes[0].children[0].children[0].token.pattern
        id_dict = self.sym_table[id]

        type = id_dict['type']
        name = id_dict['mem_name']
        addr_reg = id_dict['addr_reg']
        val_reg = id_dict['val_reg']

        # Create name
        if not name:
            name = next(self.var_name_generator)
            id_dict['mem_name'] = name

            # Since this is the first time the variable is declared,
            # the initial value property can be set to an INTLITERAL
            if isinstance(expr, int) and type == 'int':
                id_dict['init_val'] = expr
                id_dict['curr_val'] = expr
                return # no longer have to process the rest of the method

            # Do a similar thing for STRLITERALS, BYTELITERALS, SHORTLITERALS, etc

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

        # Assign LHS to RHS
        self.output_string += asm_reg_set(val_reg, expr)

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

            f_reg, f_type = self._process_primary(tree_nodes[0])
            s_reg, s_type = self._process_primary(tree_nodes[2])

            if f_type != s_type:
                # New Semantic Error (Type Mismatch)
                pass

            if type(f_reg) is int and type(s_reg) is int:
                immediate += f_reg + s_reg
                immediate_type = f_type
            else: # Initiate result_reg
                result_reg = self._find_free_register()
                result_type = f_type
                if tree_nodes[1].label == 'PLUS':
                    self.output_string += asm_add(result_reg, f_reg, s_reg)
                elif tree_nodes[1].label == 'MINUS':
                    self.output_string += asm_sub(result_reg, f_reg, s_reg)

            for i in range(3, len(tree_nodes) - 1):
                oper = tree_nodes[i].label
                next_reg, next_type = self._process_primary(tree_nodes[i+1])

                if (not immediate_type and immediate_type != next_type) \
                        or (not result_type and result_type != next_type):
                    # Raise Semantic Error (Type Mismatch)
                    pass

                if type(next_reg) is int:
                    immediate += next_reg
                    immediate_type = next_type
                else:
                    if not result_reg: # result_reg needs to be initialized
                        result_reg = self._find_free_register()
                        result_type = f_type

                    if tree_nodes[1].label == 'PLUS':
                        self.output_string += asm_add(result_reg, f_reg, s_reg)
                    elif tree_nodes[1].label == 'MINUS':
                        self.output_string += asm_sub(result_reg, f_reg, s_reg)

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
        print(token)
        id = token.pattern
        id_dict = self.sym_table[id]

        type = id_dict['type']
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
            return val_reg, type
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

        return val_reg, type
