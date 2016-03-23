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
from errors import *
from types import MethodType


def add_class_debug(klass):
    # Creates a subclass of klass that changes all method calls to add_debug(func) if debug_flag = True
    class DebuggedClass(klass):
        @staticmethod
        def add_debug(fn):
            def debugged_fn(self, curToken, G):
                print(" "*self.recursion_level + "Entering: %s (%s)" % (fn.__name__, curToken))
                self.recursion_level += 3
                R = fn(self, curToken, G)
                self.recursion_level -= 3
                print(" "*self.recursion_level + "Leaving: %s" % (fn.__name__))
                return R
            return debugged_fn

        def __init__(self, *args, **kwargs):
            self.debug_flag = False
            super().__init__(*args, **kwargs)
            for item in dir(self):
                if callable(getattr(self, item)) and '__' not in item and 'add_debug' not in item:
                    func = self.__getattribute__(item).__func__
                    func = DebuggedClass.add_debug(func) if self.debug_flag else func
                    setattr(self, item, MethodType(func, self))
    return DebuggedClass

@add_class_debug
class Parser:
    def __init__(self, isDebug):
        self.symbol_table = {}
        self.debug_flag = isDebug
        self.recursion_level = 0

    # Parsing code
    def parse(self, source_file, token_file):
        """
        source_file: A program written in the ML langauge.
        returns True if the code is syntactically correct.
        Throws a ParserError otherwise.
        """
        self.symbol_table.clear()
        G = Lexer(source_file, token_file).lex()
        curToken, t = self.program(next(G), G)
        if (curToken.name != "$"):
            raise ParserError.raise_redundant_tokens_error('There are redundant tokens at the end of the program, '
                              'starting with: %s\nLine num: %d, column num: %d'
                              %(curToken.line, curToken.line_num, curToken.col))
        return t, self.symbol_table

    # <program> -> begin <statement_list> end
    def program(self, curToken, G):
        if curToken.name != "BEGIN":
            raise ParserError.raise_parse_error("program", "begin", curToken)
        curToken, tree_stmt_list = self.statement_list(next(G), G)
        if curToken.name != "END":
            raise ParserError.raise_parse_error("program", "end", curToken)
        return next(G), tree("PROGRAM", [tree("BEGIN"), tree_stmt_list, tree("END")])

    # <statement_list> -> <statement>; { <statement>; }
    def statement_list(self, curToken, G):
        children_stmt_list = []
        while True:
            curToken, child_stmt = self.statement(curToken, G)
            if curToken.name != "SEMICOLON":
                raise ParserError.raise_parse_error("statement_list", ";", curToken)
            children_stmt_list.append(child_stmt)
            curToken = next(G)
            if curToken.name not in ("READ", "WRITE", "ID"):
                return curToken, tree("STATEMENT_LIST", children_stmt_list)

    # <statement> -> <assign> | read( <id_list> ) | write( <expr_list> )
    def statement(self, curToken, G):
        if curToken.name in ("READ", "WRITE"):
            tokenName = curToken.name
            curToken = next(G)
            if curToken.name != "LPAREN":
                raise ParserError.raise_parse_error("statement", '(', curToken)
            curToken, child_id_list_or_expr_list = self.id_list(next(G), G) if tokenName == "READ" else self.expr_list(next(G), G)
            if curToken.name != "RPAREN":
                raise ParserError.raise_parse_error("statement", ')', curToken)
            return next(G), tree("STATEMENT", [tree(tokenName), child_id_list_or_expr_list])
        # Also done to make this more explicit
        # if not in read, write, then it is assign (or assign should throw error)
        else:
            curToken, child_assign = self.assign(curToken, G)
            return curToken, tree("STATEMENT", [child_assign])
    ################### possible one line optimization ###################

    # <assign> -> <ident> := <expression>
    def assign(self, curToken, G):
        curToken, child_ident = self.ident(curToken, G)
        if curToken.name != "ASSIGNOP":
            raise ParserError.raise_parse_error("assign", ":=", curToken)
        curToken, child_expr = self.expression(next(G), G)
        return curToken, tree("ASSIGN", [child_ident, child_expr])

    # <id_list> -> <ident> {, <ident>}
    def id_list(self, curToken, G):
        children_id_list = []
        while True:
            curToken, child_ident = self.ident(curToken, G)
            children_id_list.append(child_ident)
            if curToken.name != "COMMA":
                return curToken, tree("ID_LIST", children_id_list)
            curToken = next(G)

    # <expr_list> -> <expression> {, <expression>}
    def expr_list(self, curToken, G):
        children_expr_list = []
        while True:
            curToken, child_expr = self.expression(curToken, G)
            children_expr_list.append(child_expr)
            if curToken.name != "COMMA":
                return curToken, tree("EXPR_LIST", children_expr_list)
            curToken = next(G)

    # <expression> -> <primary> {<arith_op> <primary>}
    def expression(self, curToken, G):
        children_expr = []
        while True:
            curToken, child_primary = self.primary(curToken, G)
            children_expr.append(child_primary)
            if curToken.t_class != "ARITHOP":
                return curToken, tree("EXPRESSION", children_expr)
            curToken, child_arith_op = self.arith_op(curToken, G)
            children_expr.append(child_arith_op)

    # <primary> -> (<expression>) | <ident> | INTLITERAL
    def primary(self, curToken, G):
        if curToken.name == "LPAREN":
            curToken, child_expr = self.expression(next(G), G)
            if curToken.name != "RPAREN":
                raise ParserError.raise_parse_error("primary", ")", curToken)
            return next(G), tree("PRIMARY", [child_expr])
        elif curToken.name == "ID":
            curToken, child_ident = self.ident(curToken, G)
            return curToken, tree("PRIMARY", [child_ident])
        # I flipped this to a positive check just to make
        # it slightly clearer
        elif curToken.name == "INTLIT":
            t = tree('INTLITERAL')
            t.token = curToken
            return next(G), tree("PRIMARY", [t])
        else:
            raise ParserError.raise_parse_error('primary', "INTLITERAL", curToken)

    # <ident> -> ID
    def ident(self, curToken, G):
        if curToken.name != "ID":
            raise ParserError.raise_parse_error("ident", "ID", curToken)
        self.symbol_table[curToken.pattern] = {'type': 'int', 'scope': None, 'mem_name': None, 'init_val': None,
                                          'curr_val': None, 'addr_reg': None, 'val_reg': None}
        t = tree('ID')
        t.token = curToken
        return next(G), tree("IDENT", [t])

    # <arith_op> -> + | -
    def arith_op(self, curToken, G):
        if curToken.t_class != "ARITHOP":
            raise ParserError.raise_parse_error("arith_op", "ARITHOP", curToken)
        return next(G), tree(curToken.name)
