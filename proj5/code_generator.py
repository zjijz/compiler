from tree import *
from MLparser import *
import string
from assembly_helper import *

# Symbol Table (Keys are ID pattern)
#  Type
#  Scope
#  Name for .data
#  initial data (None if not set with INTLITERAL assignment)
#  temporary register with memory address
#  temporary register with value

# Register Table (Keys are register names)
#  ID pattern
#  Variable name
#  Variable type (address or value)

# Var_Queue
#  Holds a (reg, ID pattern, var_name, var_type) tuple
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

    def __init__(self, parse_tree, symbol_table, output_filename):
        self.func_factory = {"READ": self._read_id, "WRITE": self._write_id, "ASSIGN": self._assign,
                        "EXPRESSION": self._expr_func, "ID": self._process}
        self.tree = parse_tree
        self.sym_table = symbol_table
        self.reg_table = {'$t0': None, '$t1': None, '$t2': None, '$t3': None, '$t4': None, '$t5': None, '$t6': None,
                          '$t7': None, '$t8': None, '$t9': None}
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
            if not self.reg_table[reg]:
                return reg

        # If none are open, free up a register
        reg_pop = self.var_queue.pop(0)

        # If the register stores an address, just update tables
        if reg_pop[2] == 'ADDRESS':
            # Update symbol_table
            curr_sym = self.sym_table[reg_pop[1]]
            curr_sym = (curr_sym[0], curr_sym[1], curr_sym[2], curr_sym[3], curr_sym[4], None, curr_sym[6])
            self.sym_table[reg_pop[1]] = curr_sym

            # Update reg_table
            self.reg_table[reg_pop[0]] = None
        else:
            # Save off variable to RAM
            # Try to find mem_addr, else free up a register
            mem_addr = None
            if self.sym_table[reg_pop[1]][4]:
                mem_addr = self.sym_table[reg_pop[1][4]]
            else:
                mem_addr = self._find_free_register()
                self.output_string += asm_load_mem_addr(reg_pop[1], mem_addr)
            self.output_string += asm_write_mem_addr(mem_addr, reg_pop[0])

            # Update symbol_table
            curr_sym = self.sym_table[reg_pop[1]]
            curr_sym = (curr_sym[0], curr_sym[1], curr_sym[2], curr_sym[3], curr_sym[4], curr_sym[5], None)
            self.sym_table[reg_pop[1]] = curr_sym

            # Update reg_table
            self.reg_table[reg_pop[0]] = None

        return reg_pop[0]

    def _start(self):
        # Append .text' section
        self.output_string = '.text\n'

    def _finish(self):
        # Prepend '.data' section
        data_section = '.data\n'
        for id in self.sym_table:
            var = self.sym_table[id]
            if var:
                type = var[0]
                scope = var[1]
                name = var[2]
                init_val = var[3]

                # Variables can only be integers right now
                # CHANGE THIS WHEN MORE TYPES ARE ADDED
                o_type = '.word'

                data_section += '{:s}:\t{:s}\t{:d}\t#{:s} in original\n'.format(name, o_type, init_val if init_val else 0, id)

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
        # Update Queue
        # Update sym_table
        # Update reg_table

    def _write_id(self, tree):
        print('Write')

    # Takes an assign tree: with an ID on the left and some expression on the right
    # Initializes variable on the left, and evalutes RHS using '_expr_funct'
    def _assign(self, tree):
        # Get RHS result
        e_reg = self._expr_func(tree[0].children[1].children)

        # Get LHS variable
        id = tree[0].children[0].children[0].token.pattern
        type, scope, name, init_val, addr_reg, var_reg = self._process(tree[0].children[0].children)

        # Create name
        if name == None:
            name = next(self.var_name_generator)

            # Since this is the first time the variable is declared,
            # the initial value property can be set to an INTLITERAL
            if isinstance(e_reg, int):
                self.sym_table[id] = (type, scope, name, e_reg, addr_reg, var_reg)
                return # no longer have to process the rest of the method

        # Load variable into registers
        if var_reg == None:
            var_reg = self._find_free_register()
            self.reg_table[var_reg] = (id, name, 'VALUE')
            if not addr_reg:
                addr_reg = self._find_free_register()
                self.reg_table[addr_reg] = (id, name, 'ADDRESS')
                self.output_string += asm_read_mem(name, addr_reg, var_reg)
            else:
                self.output_string += asm_read_mem_addr(addr_reg, var_reg)

        # Assign LHS to RHS
        self.output_string += asm_reg_set(var_reg, e_reg)

        # Update sym_table
        self.sym_table[id] = (type, scope, name, init_val, addr_reg, var_reg)

        # Update queue
        self.var_queue.append((addr_reg, id, name, 'ADDRESS'))
        self.var_queue.append((var_reg, id, name, 'VALUE'))

    # Takes a sequence of primary tokens and arith_ops
    # Checks that all variables are initialized
    # Does any addition/subtraction required
    # Returns either the INTLITERAL itself or the address of the value for assignment
    def _expr_func(self, tree):
        if len(tree) == 1: # then tree is a single variable or INTLITERAL
            child = tree[0].children[0]
            if child.label == 'INTLITERAL':
                return int(child.token.pattern)
            else: # single IDENT
                child = child.children

                id = child[0].token.pattern
                type, scope, name, init_val, addr_reg, var_reg = self._process(child)

                # Raise error if id has not been defined
                if not name:
                    SemanticError.raise_initialization_error(id, child[0].token.line_num, child[0].token.col)
                # Return register with value
                elif var_reg:
                    return var_reg
                # Load value into register
                elif addr_reg:
                    var_reg = self._find_free_register()
                    self.output_string += asm_read_mem_addr(addr_reg, var_reg)
                    self.reg_table[var_reg] = (id, name, 'VALUE')
                    self.var_queue.append((var_reg, id, name, 'VALUE'))
                # Load address and value into registers
                else:
                    addr_reg = self._find_free_register()
                    self.reg_table[addr_reg] = (id, name, 'ADDRESS')
                    var_reg = self._find_free_register()
                    self.reg_table[var_reg] = (id, name, 'VALUE')
                    self.output_string += asm_read_mem(name, addr_reg, var_reg)

                # Update sym_table
                self.sym_table[id] = (type, scope, name, init_val, addr_reg, var_reg)

                return var_reg
        else: # <primary> +/- ... +/- <primary>
            pass # Finish

    # Takes an ID token
    # Checks if variable address or value is in a register
    # Returns (var_name, reg_address, reg_value)
    def _process(self, tree):
        # Return tuple from sym_table
        return self.sym_table[tree[0].token.pattern]


#def codeGen(parse_tree, symbol_table, output):
#    fp = open("test.txt", "w")
#    start(symbol_table, fp)
#    traverse(parse_tree, symbol_table, fp)
#    finish(fp)
#    fp.close()


#def traverse(parse_tree, symbol_table, fp):
#    if parse_tree.children:
#        for child in parse_tree.children:
#            if child.label in func_factory:
#                func_factory[parse_tree.label](parse_tree, symbol_table, fp)
#            else:
#                traverse(child, symbol_table, fp)
