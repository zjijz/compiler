from tree import *
from MLparser import *
import string
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


def variable_name_generator():
    for c in string.ascii_lowercase:
        yield '' + c

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
                        "EXPRESSION": self._expr_func, "ID": self._process}
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

    def _read_id(self, tree):
        print('Read', tree)

    def _write_id(self, tree):
        print('Write')

    # Takes an assign tree: with an ID on the left and some expression on the right
    # Initializes variable on the left, and evalutes RHS using '_expr_funct'
    def _assign(self, tree):
        # Get RHS result
        expr, expr_type = self._expr_func(tree[0].children[1].children)

        # Get LHS variable
        id = tree[0].children[0].children[0].token.pattern
        id_dict = self._process(tree[0].children[0].children)

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
    def _expr_func(self, tree):
        if len(tree) == 1: # then tree is a single variable or INTLITERAL
            child = tree[0].children[0]

            # Check for INTLITERAL
            if child.label == 'INTLITERAL':
                return int(child.token.pattern), 'int'
            # single IDENT
            else:
                child = child.children

                id = child[0].token.pattern
                id_dict = self._process(child)

                name = id_dict['mem_name']
                addr_reg = id_dict['addr_reg']
                val_reg = id_dict['val_reg']
                curr_val = id_dict['curr_val']

                # Raise error if id has not been defined
                if not name:
                    SemanticError.raise_initialization_error(id, child[0].token.line_num, child[0].token.col)
                # Check if curr_val is not None (thus, if we can just return it)
                elif curr_val:
                    return curr_val, 'int'
                # If the value of the variable is in a register already, just return it
                elif val_reg:
                    return val_reg
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

                return val_reg, id_dict['type']
        else: # <primary> +/- ... +/- <primary>
            print(tree) # finish

    # Takes an ID token
    # Checks if variable address or value is in a register
    # Returns (var_name, reg_address, reg_value)
    def _process(self, tree):
        # Return tuple from sym_table
        return self.sym_table[tree[0].token.pattern]
