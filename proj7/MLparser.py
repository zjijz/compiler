"""
Group 9: Caroline Danzi, Nick Liu, Gregory Pataky

Parser for the Micro-language.
Grammar:
<<<<<<< HEAD
    <block>		    ->	begin <statement list> end
    <statement list>->	<statement> { <statement> }
    <statement>		->	<assignment>;
                        | <declaration>;
                        | read( <id list> );
                        | write( <expr list> );
                        | <if_statement>
                        | <while_statement>
    <declaration>	->	<type> <dec list>
    <dec list>      ->  <dec term> { , <dec term> }
    <dec term>      ->  <ident> [ := <expr_bool> ] **Allowed only once

    <assignment>	->	<ident> := <expr_bool>
    <if_statement>  ->  if <expr_bool> then <block> [else <block>]
    <while_statement>-> while <expr_bool> <block>

    <id list>		->	<ident> {, <ident>}
    <expr list>		->	<expr_bool> { , <expr_bool> }

    <expr_bool>     ->  <term_bool> { <log_or> <term_bool> }
    <term_bool>     ->  <expr_eq> { <log_and> <expr_eq> }
    <expr_eq>       ->  <expr_relation> [ <equal_op> <expr_relation> ]
    <expr_relation> ->  <expr_arith> [ <rel_op> <expr_arith> ]

    <expr_arith>    ->  <term_arith> { <unary_add_op> <term_arith> }
    <term_arith>    ->  <fact_arith> { <mul_op> <fact_arith> }
    <fact_arith>    ->  <unary_op> <term_unary>
                        | <unary_add_op> <term_unary> | <term_unary>
    <term_unary>    ->  <literals> | <ident> | (expr_bool)

    # Everything under this needs to store the token in the tree node
    <type>          ->  INT | FLOAT | STRING | BOOL
    <ident>			->	ID
    # Order is operator preference
    <literal>       ->  INTLIT | FLOATLIT | STRINGLIT |BOOLLIT
    <unary_op>      ->  LOG_NEGATION
    <mul_op>        ->  MULTIPLY | DIVIDE | MODULO
    <add_op>		->	ADD | MINUS
    <rel_op>        ->  LESS_EQUAL | GREATER_EQUAL | LESS | GREATER
    <equal_op>      ->  EQUAL | NOT_EQUAL
    <log_and>       ->  LOG_AND
    <log_or>        ->  LOG_OR
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
            def debugged_fn(self, cur_token, G):
                print(" "*self.recursion_level + "Entering: %s (%s)" % (fn.__name__, cur_token))
                self.recursion_level += 3
                R = fn(self, cur_token, G)
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
        self.debug_flag = isDebug
        self.recursion_level = 0

    # Parsing code
    def parse(self, source_file, token_file):
        """
        source_file: A program written in the ML langauge.
        returns True if the code is syntactically correct.
        Throws a ParserError otherwise.
        """
        G = Lexer(source_file, token_file).lex()
        cur_token, t = self.block(next(G), G)
        if cur_token.name != "$":
            raise ParserError.raise_redundant_tokens_error(cur_token)
        return t

    # <block> -> begin <statement_list> end
    def block(self, cur_token, G):
        if cur_token.name != "BEGIN":
            raise ParserError.raise_parse_error("program", "begin", cur_token)
        cur_token, tree_stmt_list = self.statement_list(next(G), G)
        if cur_token.name != "END":
            raise ParserError.raise_parse_error("program", "end", cur_token)
        return next(G), tree("BLOCK", [tree("BEGIN"), tree_stmt_list, tree("END")])

    # <statement_list> -> <statement> { <statement> }
    def statement_list(self, cur_token, G):
        children_stmt_list = []
        while True:
            cur_token, child_stmt = self.statement(cur_token, G)
            children_stmt_list.append(child_stmt)
            if cur_token.name not in ("READ", "WRITE", "ID", "WHILE", "IF") and cur_token.t_class != 'TYPE':
                return cur_token, tree("STATEMENT_LIST", children_stmt_list)

    # <statement> -> <assign>; | <declaration>; | read( <id_list> ); | write( <expr_list> );
    #                | <if_statement> | <while_statement>
    def statement(self, cur_token, G):
        if cur_token.name in ("READ", "WRITE"):
            tokenName = cur_token.name
            cur_token = next(G)
            if cur_token.name != "LPAREN":
                raise ParserError.raise_parse_error("STATEMENT", '(', cur_token)
            cur_token, child_id_list_or_expr_list = self.id_list(next(G), G) if tokenName == "READ" else self.expr_list(next(G), G)
            if cur_token.name != "RPAREN":
                raise ParserError.raise_parse_error("STATEMENT", ')', cur_token)
            cur_token = next(G)
            if cur_token.name != "SEMICOLON":
                raise ParserError.raise_parse_error("STATEMENT_LIST", ";", cur_token)
            return next(G), tree("STATEMENT", [tree(tokenName), child_id_list_or_expr_list])
        # Also done to make this more explicit
        # if not in read, write, then it is assign or type
        if cur_token.t_class == "TYPE":
            cur_token, child_declaration = self.declaration(cur_token, G)
            if cur_token.name != "SEMICOLON":
                raise ParserError.raise_parse_error("STATEMENT_LIST", ";", cur_token)
            return next(G), tree("STATEMENT", [child_declaration])
        if cur_token.t_class == "IDENTIFIER":
            cur_token, child_assign = self.assign(cur_token, G)
            if cur_token.name != "SEMICOLON":
                raise ParserError.raise_parse_error("STATEMENT_LIST", ";", cur_token)
            return next(G), tree("STATEMENT", [child_assign])
        if cur_token.name == "IF":
            cur_token, child_if = self.if_statement(cur_token, G)
            return cur_token, tree("STATEMENT", [child_if])
        if cur_token.name == "WHILE":
            cur_token, child_while = self.while_statement(cur_token, G)
            return cur_token, tree("STATEMENT", [child_while])
        raise ParserError.raise_parse_error("STATEMENT", 'TYPE or ID or IF or WHILE', cur_token)

    # <if_statement>  ->  if <expr_bool> then <block> [else <block>]
    def if_statement(self, cur_token, G):
        cur_token, child_expr_bool = self.expr_bool(next(G), G)
        if cur_token.name != "THEN":
            raise ParserError.raise_parse_error("IF_STATEMENT", 'THEN', cur_token)
        cur_token, child_block = self.block(next(G), G)
        if cur_token.name != "ELSE":
            return cur_token, tree("IF_STATEMENT", [tree("IF"), child_expr_bool, tree("THEN"), child_block])
        cur_token, child_else_block = self.block(next(G), G)
        return cur_token, tree("IF_STATEMENT", [tree("IF"), child_expr_bool, tree("THEN"),
                                                child_block, tree("ELSE"), child_else_block])

    # <while_statement>-> while <expr_bool> <block>
    def while_statement(self, cur_token, G):
        cur_token, child_expr_bool = self.expr_bool(next(G), G)
        cur_token, child_block = self.block(next(G), G)
        return cur_token, tree("WHILE_STATEMENT", [tree("WHILE"), child_expr_bool, child_block])

    # <declaration>	-> <type> <dec list>
    def declaration(self, cur_token, G):
        if cur_token.t_class != "TYPE":
            raise ParserError.raise_parse_error("DECLARATION", "TYPE", cur_token)
        type_tree = tree("TYPE", [], cur_token)
        cur_token, child_dec_list = self.dec_list(next(G), G)
        return cur_token, tree("DECLARATION", [type_tree, child_dec_list])

    # <dec list> -> <dec term> { , <dec term> }
    def dec_list(self, cur_token, G):
        children_dec_term = []
        while True:
            cur_token, child_dec_term = self.dec_term(cur_token, G)
            children_dec_term.append(child_dec_term)
            if cur_token.name != "COMMA":
                return cur_token, tree("DEC_LIST", children_dec_term)
            cur_token = next(G)

    # <dec term> -> <ident> [ := <expr_bool> ] **ALlowed only once
    def dec_term(self, cur_token, G):
        cur_token, child_ident = self.ident(cur_token, G)
        if cur_token.name == "ASSIGNOP":
            cur_token, child_expr = self.expr_bool(next(G), G)
            return cur_token, tree("DEC_TERM", [child_ident, child_expr])
        return cur_token, tree("DEC_TERM", [child_ident])

    # <assignment> -> <ident> := <expr_bool>
    def assign(self, cur_token, G):
        cur_token, child_ident = self.ident(cur_token, G)
        if cur_token.name != "ASSIGNOP":
            raise ParserError.raise_parse_error("ASSIGN", ":=", cur_token)
        cur_token, child_expr_bool = self.expr_bool(next(G), G)
        return cur_token, tree("ASSIGN", [child_ident, child_expr_bool])

    # <id_list> -> <ident> {, <ident>}
    def id_list(self, cur_token, G):
        children_id_list = []
        while True:
            cur_token, child_ident = self.ident(cur_token, G)
            children_id_list.append(child_ident)
            if cur_token.name != "COMMA":
                return cur_token, tree("ID_LIST", children_id_list)
            cur_token = next(G)

    # <expr list> -> <expr_bool> { , <expr_bool> }
    def expr_list(self, cur_token, G):
        children_expr_list = []
        while True:
            cur_token, child_expr_bool = self.expr_bool(cur_token, G)
            children_expr_list.append(child_expr_bool)
            if cur_token.name != "COMMA":
                return cur_token, tree("EXPR_LIST", children_expr_list)
            cur_token = next(G)

    # <expr_bool> -> <term_bool> { <log_or> <term_bool> }
    def expr_bool(self, cur_token, G):
        children_expr_bool = []
        while True:
            cur_token, child_term_bool = self.term_bool(cur_token, G)
            children_expr_bool.append(child_term_bool)
            if cur_token.t_class != "LOG_OR":
                return cur_token, tree("EXPR_BOOL", children_expr_bool)
            children_expr_bool.append(tree(cur_token.name, [], cur_token))
            cur_token = next(G)

    # <term_bool> -> <expr_eq> { <log_and> <expr_eq> }
    def term_bool(self, cur_token, G):
        children_term_bool = []
        while True:
            cur_token, child_expr_eq = self.expr_eq(cur_token, G)
            children_term_bool.append(child_expr_eq)
            if cur_token.t_class != "LOG_AND":
                return cur_token, tree("TERM_BOOL", children_term_bool)
            children_term_bool.append(tree(cur_token.name, [], cur_token))
            cur_token = next(G)

    # <expr_eq> -> <expr_relation> [ <equal_op> <expr_relation> ]
    def expr_eq(self, cur_token, G):
        children_expr_eq = []
        cur_token, child_expr_relation = self.expr_relation(cur_token, G)
        children_expr_eq.append(child_expr_relation)
        if cur_token.t_class == 'EQUAL_OP':
            children_expr_eq.append(tree(cur_token.name, [], cur_token))
            cur_token, child_expr_relation = self.expr_relation(next(G), G)
            children_expr_eq.append(child_expr_relation)
        return cur_token, tree('EXPR_EQ', children_expr_eq)

    # <expr_relation> ->  <expr_arith> [ <rel_op> <expr_arith> ]
    def expr_relation(self, cur_token, G):
        children_expr_relation = []
        cur_token, child_expr_arith = self.expr_arith(cur_token, G)
        children_expr_relation.append(child_expr_arith)
        if cur_token.t_class == 'REL_OP':
            children_expr_relation.append(tree(cur_token.name, [], cur_token))
            cur_token, child_expr_arith = self.expr_arith(next(G), G)
            children_expr_relation.append(child_expr_arith)
        return cur_token, tree('EXPR_RELATION', children_expr_relation)


    # <expr_arith> -> <term_arith> { <unary_add_op> <term_arith> }
    def expr_arith(self, cur_token, G):
        children_expr_arith = []
        while True:
            cur_token, child_term_arith = self.term_arith(cur_token, G)
            children_expr_arith.append(child_term_arith)
            if cur_token.t_class != "UNARY_ADD_OP":
                return cur_token, tree("EXPR_ARITH", children_expr_arith)
            children_expr_arith.append(tree(cur_token.name, [], cur_token))
            cur_token = next(G)

    # <term_arith> -> <fact_arith> { <mul_op> <fact_arith> }
    def term_arith(self, cur_token, G):
        children_term_arith = []
        while True:
            cur_token, child_fact_arith = self.fact_arith(cur_token, G)
            children_term_arith.append(child_fact_arith)
            if cur_token.t_class != "MUL_OP":
                return cur_token, tree("TERM_ARITH", children_term_arith)
            children_term_arith.append(tree(cur_token.name, [], cur_token))
            cur_token = next(G)

    # <fact_arith> -> <unary_op> <term_unary>
    #                 | <unary_add_op> <term_unary> | <term_unary>
    def fact_arith(self, cur_token, G):
        if cur_token.t_class in {'UNARY_OP', 'UNARY_ADD_OP'}:
            next_token, child_term_unary = self.term_unary(next(G), G)
            return next_token, tree('FACT_ARITH', [tree(cur_token.name), child_term_unary])
        else:
            cur_token, child_term_unary = self.term_unary(cur_token, G)
            return cur_token, tree('FACT_ARITH', [child_term_unary])

    # <term_unary> -> <literal> | <ident> | (expr_bool)
    def term_unary(self, cur_token, G):
        if cur_token.name == "LPAREN":
            cur_token, child_expr_bool = self.expr_bool(next(G), G)
            if cur_token.name != "RPAREN":
                raise ParserError.raise_parse_error("TERM_UNARY", ")", cur_token)
            return next(G), tree("TERM_UNARY", [child_expr_bool])
        elif cur_token.name == "ID":
            cur_token, child_ident = self.ident(cur_token, G)
            return cur_token, tree("TERM_UNARY", [child_ident])
        # I flipped this to a positive check just to make
        # it slightly clearer
        elif cur_token.t_class == "LITERAL":
            return next(G), tree("TERM_UNARY", [tree(cur_token.name, [], cur_token)])
        else:
            raise ParserError.raise_parse_error('TERM_UNARY', "ID or LITERAL", cur_token)

    # <ident> -> ID
    def ident(self, cur_token, G):
        if cur_token.name != "ID":
            raise ParserError.raise_parse_error("IDENT", "ID", cur_token)
        return next(G), tree("IDENT", [], cur_token) #[tree("ID", [], cur_token)])
