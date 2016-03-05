"""
Group 9: Caroline Danzi, Nick Liu, Gregory Pataky

Parser for the Micro-language.
Grammar:
   <program> -> begin <statement_list> end
   <statement_list> -> <statement>; { <statement>; }
   <statement> -> <assign> | read( <id_list> ) | write( <expr_list> )
   <assign> -> <ident> := <expression>
   <id_list> -> <ident> {, <ident>}
   <expr_list> -> <expression> {, <expression>}
   <expression> -> <primary> {<arith_op> <primary>}
   <primary> -> (<expression>) | <ident> | INTLITERAL
   <ident> -> ID
   <arith_op> -> + | -
"""

from tree import *
from lexer import *
#import re

#######################
# For debugging
debug = False
recursion_level = 0

def add_debug(fn):
    def debugged_fn(curToken, G):
        global recursion_level
        print(" "*recursion_level + "Entering: %s (%s)" % (fn.__name__, curToken))
        recursion_level += 3
        R = fn(curToken, G)
        recursion_level -= 3
        print(" "*recursion_level + "Leaving: %s" % (fn.__name__))
        return R
    return debugged_fn if debug else fn

#########################

class ParserError(Exception):
    def __init__(self, msg):
        self.msg = msg

    def __str__(self):
        return self.msg

#########################

symbol_table = {}

# Parsing code
def parser(source_file, token_file):
    """
    source_file: A program written in the ML langauge.
    returns True if the code is syntactically correct.
    Throws a ParserError otherwise.
    """
    symbol_table.clear()
    G = lexer(source_file, token_file)
    curToken, t = program(next(G), G)
    if (curToken.name != "$"):
        raise ParserError('There are redundant tokens at the end of the program, '
                          'starting with: %s\nLine num: %d, column num: %d'
                          %(curToken.line, curToken.line_num, curToken.col))
    return t, symbol_table

def raiseParserError(symbolName, expectedTokenStr, actualToken):
    raise ParserError('Syntax error in <%s>, expected "%s", actually is "%s" \nLine num: %d, column num: %d'
                      %(symbolName, expectedTokenStr, actualToken.pattern, actualToken.line_num, actualToken.col))

@add_debug
# <program> -> begin <statement_list> end
def program(curToken, G):
    if curToken.name != "BEGIN":
        raise raiseParserError("program", "begin", curToken)
    curToken, tree_stmt_list = statement_list(next(G), G)
    if curToken.name != "END":
        raiseParserError("program", "end", curToken)
    return next(G), tree("PROGRAM", [tree("BEGIN"), tree_stmt_list, tree("END")])

@add_debug
# <statement_list> -> <statement>; { <statement>; }
def statement_list(curToken, G):
    children_stmt_list = []
    while True:
        curToken, child_stmt = statement(curToken, G)
        if curToken.name != "SEMICOLON":
            raiseParserError("statement_list", ";", curToken)
        children_stmt_list.append(child_stmt)
        curToken = next(G)
        if curToken.name not in ("READ", "WRITE", "ID"):
            return curToken, tree("STATEMENT_LIST", children_stmt_list)

@add_debug
# <statement> -> <assign> | read( <id_list> ) | write( <expr_list> )
def statement(curToken, G):
    if curToken.name in ("READ", "WRITE"):
        tokenName = curToken.name
        curToken = next(G)
        if curToken.name != "LPAREN":
            raiseParserError("statement", '(', curToken)
        curToken, child_id_list_or_expr_list = id_list(next(G), G) if tokenName == "READ" else expr_list(next(G), G)
        if curToken.name != "RPAREN":
            raiseParserError("statement", ')', curToken)
        return next(G), tree("STATEMENT", [tree(tokenName), child_id_list_or_expr_list])
    # Also done to make this more explicit
    # if not in read, write, then it is assign (or assign should throw error)
    else:
        curToken, child_assign = assign(curToken, G)
        return curToken, tree("STATEMENT", [child_assign])
################### possible one line optimization ###################

@add_debug
# <assign> -> <ident> := <expression>
def assign(curToken, G):
    curToken, child_ident = ident(curToken, G)
    if curToken.name != "ASSIGNOP":
        raiseParserError("assign", ":=", curToken)
    curToken, child_expr = expression(next(G), G)
    return curToken, tree("ASSIGN", [child_ident, child_expr])

@add_debug
# <id_list> -> <ident> {, <ident>}
def id_list(curToken, G):
    children_id_list = []
    while True:
        curToken, child_ident = ident(curToken, G)
        children_id_list.append(child_ident)
        if curToken.name != "COMMA":
            return curToken, tree("ID_LIST", children_id_list)
        curToken = next(G)

@add_debug
# <expr_list> -> <expression> {, <expression>}
def expr_list(curToken, G):
    children_expr_list = []
    while True:
        curToken, child_expr = expression(curToken, G)
        children_expr_list.append(child_expr)
        if curToken.name != "COMMA":
            return curToken, tree("EXPR_LIST", children_expr_list)
        curToken = next(G)

@add_debug
# <expression> -> <primary> {<arith_op> <primary>}
def expression(curToken, G):
    children_expr = []
    while True:
        curToken, child_primary = primary(curToken, G)
        children_expr.append(child_primary)
        if curToken.t_class != "ARITHOP":
            return curToken, tree("EXPRESSION", children_expr)
        curToken, child_arith_op = arith_op(curToken, G)
        children_expr.append(child_arith_op)

@add_debug
# <primary> -> (<expression>) | <ident> | INTLITERAL
def primary(curToken, G):
    if curToken.name == "LPAREN":
        curToken, child_expr = expression(next(G), G)
        if curToken.name != "RPAREN":
            raiseParserError("primary", ")", curToken)
        return next(G), tree("PRIMARY", [child_expr])
    elif curToken.name == "ID":
        curToken, child_ident = ident(curToken, G)
        return curToken, tree("PRIMARY", [child_ident])
    # I flipped this to a positive check just to make
    # it slightly clearer
    elif curToken.name == "INTLIT":
        return next(G), tree("PRIMARY", [tree("INTLIT")])
    else:
        raiseParserError('primary', "INTLITERAL", curToken)

@add_debug
# <ident> -> ID
def ident(curToken, G):
    if curToken.name != "ID":
        raiseParserError("ident", "ID", curToken)
    symbol_table[curToken.pattern] = None
    return next(G), tree("IDENT", [tree("ID")])

@add_debug
# <arith_op> -> + | -
def arith_op(curToken, G):
    if curToken.t_class != "ARITHOP":
        raiseParserError("arith_op", "ARITHOP", curToken)
    return next(G), tree(curToken.name)
