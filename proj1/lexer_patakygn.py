"""
Written by: Jayson Boubin, Jason Katsaros, Gregory Pataky (Group 8)
Date: 02/01/2016
Topic: CSE474, Assignment 1
"""

import re
import sys

class LexerError(Exception):
    """
    Exception to be thrown when the lexer encounters a bad token.
    """
    def __init__(self, msg):
        self.msg = msg

    def __str__(self):
        return str(self.msg)

class Token:
    """
    A class for storing token information.
    The variable instances for a token object are:
    * t_class: The token class.
    * name: The name of the token.
    * pattern: The specific pattern of the token
    * line: The line containing the token
    * line_num: The line number (numbered from 1)
    * col: The column number (numbered from 0)
    """

    def __init__(self, t_class, name, pattern, line, line_num, col):
        """
        Constructor
        """
        self.t_class = t_class
        self.name = name
        self.pattern = pattern
        self.line = line
        self.line_num = int(line_num)
        self.col = int(col)

    def __str__(self):
        """
        Defines behavior of the str function on the Token class.
        Prints as a tupple all information except self.line.
        """
        return str((self.t_class, self.name, self.pattern, self.line_num, self.col))

    def __repr__(self):
        """
        Defines the behaviour of the repr() function
        on the Token class.
        """
        return "Token: " + str(self)

    def __eq__(self, other):
        """
        Defines behaviour of the == operator on the Token class
        """
        return self.t_class == other.t_class and self.name == other.name and \
               self.pattern == other.pattern and self.line == other.line and \
               self.line_num == other.line_num and self.col == other.col
               

def lexer(source_file, token_file):
    """
    Input:
    * source_file: file containing the content to be tokenized
    * token_file: token file (see assignment specifications for format)
    Output:
    * A generator that will iteratively return token objects corresponding to the tokens
      of source_file, throwing a LexerError if it hits a bad token.
    """

    # Read in Tokens
    token_list = []
    with open(token_file) as token_source:
        for line in iter(token_source.readline, ""):
            token_list.append(tuple((re.split("\s+", line.strip(), 2)))) # 2 actually means 3 (0, 1, 2  = indices)

    # Read and Tokenize Source
    with open(source_file) as source:
        line_count = 0
        for line in iter(source.readline, ''):
            col_count = 0
            line_count += 1
            line = line.rstrip() # sanitized slightly [original: re.sub("(\s*$)", "", line)]
            line = re.sub("#(.|\s)*$", "", line) # ignore comments from source file (removes them forever!)
            while col_count < len(line):
                # Cleaned up a little bit with the regex matching instead of string equality
                # [original: line[col_count] == " " or line[col_count] == "" or line[col_count] == "\t":]
                if re.match("\s", line[col_count]):
                    col_count += 1
                    continue

                # found is created as a 'null' reference to matching the current character line[col_count].
                # The substring line[col_count:] is checked against all token tuples in token_list.
                # If a match is found, found is set to the MatchObject and a Token object is created (see above class).
                found = None
                for t in token_list:
                    found = re.match(t[2], line[col_count:])
                    if found:
                        yield Token(t[0], t[1], line[col_count : col_count + found.end(1)], line, line_count, col_count)
                        col_count += found.end(1) # increment col_count to the end of the matched token (end of group(1))
                        break # if token is matched, no more need to look for a match
                            
                if not found:
                    # this lets the error message say LexerError(msg) instead of something ugly
                    msg = "Bad token (line " +  str(line_count) + ", column " + str(col_count) + "): " \
                                + line[col_count:]
                    raise LexerError(msg)
