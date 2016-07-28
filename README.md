Project Description
===================

Nick (*bboysnick*), Caroline (*carolinedanzi*), and Greg (*zjijz*) worked together to develop a compiler for the ALGOL-like language specified below for Dr. Karro's CSE474: Compiler Design during January - May 2016. As part of the class, we were given liberty in developing the basic language (ALGOL derived) to whatever we wanted when we added functions. We chose to go in a direction more akin to a scripting language, with no need to specify a main method and no need to specify a return value of *void*.

The compiler converts this language to MARS MIPS assembly code.

It is important to note that due to the duration of the class, we did not have time to implement much stack-based storage (besides for function calling). Thus, we do not support dynamic (i.e. user-inputted or other strings formed at runtime) strings.

Language
================

Features
--------

- Lexical Scoping
- Explicit Typing
- Procedural, Imperative, and Structured Paradigms

Built-In Functions
------------------
- **read( _int, float, bool_ )**: Will prompt the user to input a value for the variable (assumes value will be correct type).
- **write( _any_ )**: Will print to the console the value passed to it. Will not print a newline unless "\n" is specifically present.

Tokens
------

```
RESERVED		    BEGIN			(begin)(\W|$)
RESERVED		    END			    (end)(\W|$)
RESERVED		    READ			(read)(\W|$)
RESERVED		    WRITE			(write)(\W|$)
RESERVED            RETURN          (return)(\W|$)
RESERVED            REF             (ref)(\W|$)
RESERVED            IF              (if)(\W|$)
RESERVED            ELSE            (else)(\W|$)
RESERVED            THEN            (then)(\W|$)
RESERVED            WHILE           (while)(\W|$)
TYPE			    INT			    (int)(\W|$)
TYPE			    FLOAT           (float)(\W|$)
TYPE			    STRING		    (string)(\W|$)
TYPE			    BOOL			(bool)(\W|$)
LITERAL             FLOATLIT        (\d+\.\d*|\d*\.\d+)
LITERAL             INTLIT		    (\d+)
LITERAL		        BOOLLIT		    (True|False)(\W|$)
LITERAL		        STRINGLIT		("(?:[^"\\]|\\.)*")
FUNC_RET            ARROW           (->)
UNARY_OP            LOG_NEGATION    (not)(\W|$)
UNARY_ADD_OP        PLUS			(\+)
UNARY_ADD_OP        MINUS			(\-)
MUL_OP              MULTIPLY        (\*)
MUL_OP              DIVIDE		    (\/)
MUL_OP              MODULO		    (%)
REL_OP		        LESS_EQUAL		(<=)
REL_OP		        GREATER_EQUAL	(>=)
REL_OP		        GREATER     	(>)
REL_OP		        LESS        	(<)
EQUAL_OP            EQUAL			(==)
EQUAL_OP            NOT_EQUAL		(!=)
LOG_AND             LOG_AND			(and)(\W|$)
LOG_OR              LOG_OR			(or)(\W|$)
SYMBOL		        LPAREN		    (\()
SYMBOL		        RPAREN		    (\))
SYMBOL		        SEMICOLON		(;)
SYMBOL		        COMMA			(,)
SYMBOL		        ASSIGNOP		(\:=)
IDENTIFIER		    ID			    ([a-zA-Z]\w*)
```

Grammar
------

### Main Grammar

```
<block>		    ->	begin <statement list> end
<statement list>->	<statement> { <statement> }
<statement>		->	<id_statement>
                    | <declaration>;
                    | read( <id list> );
                    | write( <expr list> );
                    | <if_statement>
                    | <while_statement>
<declaration>	->	<type> <dec list>
<dec list>      ->  <dec term> { , <dec term> }
<dec term>      ->  <ident> [ := <expr_bool> ] **Allowed only once

<id_statement>  ->  <ident> <id_state_body>
<id_state_body> ->  <func>
                    | <assignment> ;

<func>          ->  ( <func_gen> <func_tail>
<func_gen>      ->  <func_dec>
                    | <func_call>
                    | (empty)
<func_dec>      ->  <type> [ref] <ident> {, <type> [ref] <ident>}
<func_call>     ->  <expr_list>
<func_tail>     ->  ) <func_tail_gen>
<func_tail_gen> ->  <func_tail_dec>
                    | <func_tail_call>
<func_tail_dec> ->  [-> <type>] <block>
<func_tail_call>->  ;

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
<type>          ->  INT | FLOAT | STRING | BOOL
<ident>			->	ID
```

### Operators (Order is operator preference)

```
<literal>       ->  INTLIT | FLOATLIT | STRINGLIT |BOOLLIT
<unary_op>      ->  LOG_NEGATION
<mul_op>        ->  MULTIPLY | DIVIDE | MODULO
<add_op>		->	ADD | MINUS
<rel_op>        ->  LESS_EQUAL | GREATER_EQUAL | LESS | GREATER
<equal_op>      ->  EQUAL | NOT_EQUAL
<log_and>       ->  LOG_AND
<log_or>        ->  LOG_OR
```

Compiler
========

Description
-----------

We developed an LL(1) recursive-descent parser to parse the grammar into an Abstract Syntax Tree (AST). The code generator works without a pre or post-optimizer, but handles all of the optimization we do itself. This caused for the code to be somewhat muddled, especially when some of our early assumptions for static analysis were broken with the requirement for conditional blocks.

Features
--------
- Static analysis of integers, booleans, floats, and strings
- Static analysis to remove unneeded variables
- Symbol Table that tracks when variables are used, what registers have their addresses and values, and what their value is (if determinable)
- Dynamic register management with different register pools for integers and floats
- Variable Queue that allows for the oldest variables to be tracked and removed from the register tables
- Operator preference similar to Python that allows for minimal required parentheses for statements to work as expected
- Blocks
- Conditionals
- While loops
- Function blocks by creating stack frames
- Function parameters passed by value and reference (integers only)
- Basic recursion
- Tracks auxiliary registers to minimize unnecessary moves to registers used in syscall functions
- Safe mode and unsafe mode (unsafe mode uses registers that are normally supposed to be saved without saving them off - this has no effect on programs generated by the copmiler, but might affect interoperability)
- Debug mode that shows debugging on the parser and prints out the code generator tables
- Optimization levels for the compiler (Currently only supports O1 (no extra besides register tracking) or O3 (all optimizations)

Testers
-------

We developed two extensive test suites to ensure required functionality and edge cases. To use them, please see the *archive/proj8* folder and run *unit_tests.sh* and/or *unit_tests_old.sh*.
