Documentation
=============

compiler.py
-----------
* **-t <file>**: Specifies the token file for the lexer
* **-d**: Adds the debug flag to tell the compiler to print out the AST and code generator tables
* **-s**: Adds the safe flag to tell the compiler to only use registers that don't require saving
* *(first positional argument)*: file to copmile to MIPS
* *(second positional argument)*: the destination file


Run Example
===========

Compile
-------

python3.5 compiler.py -t files/tokens.txt -d files/test.ml files/test.asm

Run
---

java -jar <MARS MIPS JAR path> files/test.asm
