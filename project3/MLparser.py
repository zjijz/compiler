"""
Parser for the Micro-language.
Grammar:
   <program> -> begin <statement_list> end
   <statement_list> -> <statement>; { <statement; }
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

class ParserError(Exception):
    def __init__(self, msg):
        self.msg = msg

    def __str__(self):
        return self.msg


#######################################
# Parsing code
def parser(source_file, token_file):
    """
    source_file: A program written in the ML langauge.
    returns True if the code is syntactically correct.
    Throws a ParserError otherwise.
    """
    G = lexer(source_file, token_file)
    return program(next(G), G).line == "$"

def raiseParserError(symbol, expectedTokenStr, actualToken):
    raise ParserError('Error in <%s>, expect "%s", actually is "%s" \nLine num: %d, column num: %d'
                      %(symbol, expectedTokenStr, actualToken.line, actualToken.line_num, actualToken.col))

def program(curToken, G):
    if curToken.line != "begin":
        raise raiseParserError("program", "begin", curToken)
    curToken = statement_list(next(G), G)
    if curToken.line != "end":
        raiseParserError("program", "end", curToken)
    return next(G) 

def statement_list(curToken, G):
    curToken = statement(curToken, G)
    if curToken.line != ";":
        raiseParserError("statement_list", ";", curToken)
    if re.match("write|read|[a-zA-Z]\w+", curToken):
        return statement(next(G), G)
    return curToken

def statement(curToken, G):
    if curToken.line == "read":
        curToken = next(G)
        if curToken.line != '(':
            raiseParserError("statement", '(', curToken)
        curToken = id_list(next(G), G)
        if curToken.line != ')':
            raiseParserError("statement", ')', curToken)
        return next(G)
    if curToken.line == "write":
        curToken = next(G)
        if curToken.line != '(':
            raiseParserError("statement", '(', curToken)
        curToken = expr_list(next(G), G)
        if curToken.line != ')':
            raiseParserError("statement", ')', curToken)
        return next(G)
    return assign(curToken, G)
