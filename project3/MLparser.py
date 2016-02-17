"""
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

from lexer import *
import re

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

"""
We know there are two errors while passing unit tests:
    - statement_list is allowing for zero statements between being and end,
        which is disallowed by grammar
    - ident isn't checking for token name, which would possibly allow reserved
        be used as ID
"""

# Parsing code
def parser(source_file, token_file):
    """
    source_file: A program written in the ML langauge.
    returns True if the code is syntactically correct.
    Throws a ParserError otherwise.
    """
    G = lexer(source_file, token_file)
    return program(next(G), G).name == "$"

def raiseParserError(symbolName, expectedTokenStr, actualToken):
    raise ParserError('Error in <%s>, expected "%s", actually is "%s" \nLine num: %d, column num: %d'
                      %(symbolName, expectedTokenStr, actualToken.pattern, actualToken.line_num, actualToken.col))

@add_debug
# <program> -> begin <statement_list> end
def program(curToken, G):
    if curToken.name != "BEGIN":
        raise raiseParserError("program", "begin", curToken)
    curToken = statement_list(next(G), G)
    if curToken.name != "END":
        raiseParserError("program", "end", curToken)
    return next(G)

@add_debug
# <statement_list> -> <statement>; { <statement>; }
def statement_list(curToken, G):

    while True:
        curToken = statement(curToken, G)
        if curToken.name != "SEMICOLON":
            raiseParserError("statement_list", ";", curToken)
        curToken = next(G)
        if re.match("end|read|write", curToken.pattern) or not re.match("[a-zA-Z]\w*", curToken.pattern):
        #if curToken.name not in ("READ", "WRITE", "ID"): correct version
            return curToken

@add_debug
# <statement> -> <assign> | read( <id_list> ) | write( <expr_list> )
def statement(curToken, G):
    if curToken.name in ("READ", "WRITE"):
        tokenName = curToken.name
        curToken = next(G)
        if curToken.name != "LPAREN":
            raiseParserError("statement", '(', curToken)
        curToken = id_list(next(G), G) if tokenName == "READ" else expr_list(next(G), G)
        if curToken.name != "RPAREN":
            raiseParserError("statement", ')', curToken)
        return next(G)
    return assign(curToken, G)

@add_debug
# <assign> -> <ident> := <expression>
def assign(curToken, G):
    curToken = ident(curToken, G)
    if curToken.name != "ASSIGNOP":
        raiseParserError("assign", ":=", curToken)
    return expression(next(G), G)

@add_debug
# <id_list> -> <ident> {, <ident>}
def id_list(curToken, G):
    curToken = ident(curToken, G)
    while curToken.name == "COMMA":
        curToken = ident(next(G), G)
    return curToken

@add_debug
# <expr_list> -> <expression> {, <expression>}
def expr_list(curToken, G):
    curToken = expression(curToken, G)
    while curToken.name == "COMMA":
        curToken = expression(next(G), G)
    return curToken

@add_debug
# <expression> -> <primary> {<arith_op> <primary>}
def expression(curToken, G):
    curToken = primary(curToken, G)
    while curToken.t_class == "ARITHOP":
        curToken = primary(arith_op(curToken, G), G)
    return curToken

@add_debug
# <primary> -> (<expression>) | <ident> | INTLITERAL
def primary(curToken, G):
    if curToken.name == "LPAREN":
        curToken = expression(next(G), G)
        if curToken.name != "RPAREN":
            raiseParserError("primary", ")", curToken)
    if not re.match("end|read|write", curToken.pattern) and re.match("[a-zA-Z]\w*", curToken.pattern):
    #if curToken.name == "ID": correct version
        return ident(curToken, G)
    if curToken.name != "INTLIT":
        raiseParserError('primary', "INTLITERAL", curToken)
    return next(G)

@add_debug
# <ident> -> ID
def ident(curToken, G):
    if re.match("end|read|write", curToken.pattern) or not re.match("[a-zA-Z]\w*", curToken.pattern):
    # line above would match all the test cases but it's still wrong
    # because it didn't exclude the reserved word begin for ID

    ## (Use the condition below for real version) ##
    # if curToken.name != "ID":
        raiseParserError("ident", "ID", curToken)
    return next(G)

@add_debug
# <arith_op> -> + | -
def arith_op(curToken, G):
    if curToken.t_class != "ARITHOP":
        raiseParserError("arith_op", "ARITHOP", curToken)
    return next(G)



