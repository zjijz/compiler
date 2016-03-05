from MLparser import *



def codeGen(parse_tree, symbol_table, output):
    fp = open("test.txt", "w")
    start(symbol_table, fp)
    traverse(parse_tree, symbol_table, fp)
    finish(fp)
    fp.close()


def traverse(parse_tree, symbol_table, fp):
    if parse_tree.children:
        for child in parse_tree.children:
            if child.label in func_factory:
                func_factory[parse_tree.label](parse_tree, symbol_table, fp)
            else:
                traverse(child, symbol_table, fp)


def start(symbol_table, fp):
    pass

def finish(fp):
    pass

def read_id(parse_tree, symbol_table, fp):
    pass

def write_id(parse_tree, symbol_table, fp):
    pass

def assign(parse_tree, symbol_table, fp):
    pass

def expr_func(parse_tree, symbol_table, fp):
    pass

def process(parse_tree, symbol_table, fp):
    pass

func_factory = {"READ":read_id, "WRITE":write_id, "ASSIGN":assign, "EXPRESSION":expr_func, "ID": process}


