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

#######################
# For debugging
debug = False
recursion_level = 0

def add_debug(fn):
    def debugged_fn(current, G):
        global recursion_level
        print(" "*recursion_level + "Entering: %s (%s)" % (fn.__name__, current))
        recursion_level += 3
        R = fn(current, G)
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
def program(current, G):
    if current.name != "BEGIN":
        raise raiseParserError("program", "begin", current)
    current = statement_list(next(G), G)
    if current.name != "END":
        raiseParserError("program", "end", current)
    return next(G)

@add_debug
# <statement_list> -> <statement>; { <statement>; }
def statement_list(current, G):

    # removed the 'firstTime' boolean since it's unnecessary
    while current.name in ("READ", "WRITE", "ID"):
        current = statement(current, G)
        if current.name != "SEMICOLON":
            raiseParserError("statement_list", ";", current)
        current = next(G)
    return current

    # This is a more general version...
    # while current.name != "END":
    #    current = statement(current, G)
    #    if current.name != 'SEMICOLON':
    #        raiseParserError("statement_list", ";", current)
    #    current = next(G)
    # return current

@add_debug
# <statement> -> <assign> | read( <id_list> ) | write( <expr_list> )
def statement(current, G):
    if current.name in ("READ", "WRITE"):
        tokenName = current.name
        current = next(G)
        if current.name != "LPAREN":
            raiseParserError("statement", '(', current)
        current = id_list(next(G), G) if tokenName == "READ" else expr_list(next(G), G)
        if current.name != "RPAREN":
            raiseParserError("statement", ')', current)
        return next(G)
    return assign(current, G)

@add_debug
# <assign> -> <ident> := <expression>
def assign(current, G):
    current = ident(current, G)
    if current.name != "ASSIGNOP":
        raiseParserError("assign", ":=", current)
    return expression(next(G), G)

@add_debug
# <id_list> -> <ident> {, <ident>}
def id_list(current, G):
    current = ident(current, G)
    while current.name == "COMMA":
        current = ident(next(G), G)
    return current

@add_debug
# <expr_list> -> <expression> {, <expression>}
def expr_list(current, G):
    current = expression(current, G)
    while current.name == "COMMA":
        current = expression(next(G), G)
    return current

@add_debug
# <expression> -> <primary> {<arith_op> <primary>}
def expression(current, G):
    current = primary(current, G)
    while current.t_class == "ARITHOP":
        current = primary(arith_op(current, G), G)
    return current

@add_debug
# <primary> -> (<expression>) | <ident> | INTLITERAL
def primary(current, G):
    if current.name == "LPAREN":
        current = expression(next(G), G)
        if current.name != "RPAREN":
            raiseParserError("primary", ")", current)
        # Returned at the end
        # return next(G)
    # Changed to elif's to use the same return at the bottom
    # Can be improved by never calling ID, since we know it is an ID token or not at this stage?
    elif current.name == "ID":
        return ident(current, G)
    # elif current.name != "ID":
    #   raise ParserError('primary', 'ID', current)
    elif current.name != "INTLIT":
        raiseParserError('primary', "INTLITERAL", current)
    return next(G)

@add_debug
# <ident> -> ID
def ident(current, G):
    # if re.match("end|read|write", current.pattern) or not re.match("[a-zA-Z]\w*", current.pattern):
    # line above would match all the test cases but it's still wrong
    # because it didn't exclude the reserved word begin for ID

    # (Greg: I don't think there could be a 'begin' token in place of an ID token)
    if current.name != "ID":
        raiseParserError("ident", "ID", current)
    return next(G)

@add_debug
# <arith_op> -> + | -
def arith_op(current, G):
    if current.t_class != "ARITHOP":
        raiseParserError("arith_op", "ARITHOP", current)
    return next(G)





