import re
from errors import *

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
    re_list = []
    token_hash = {}

    with open(token_file) as tokens:
        for line in tokens:
            split = re.split("\s+", line.rstrip())
            re_list.append(split[2])
            token_hash[split[2]] = (split[0], split[1])

    with open(source_file) as source:
        line_num = 0
        for line in source:
            line_num += 1

            # Remove all comments from the line
            line = re.sub("#(.|\s)*$", "", line.rstrip())

            # Start col at first non-whitespace
            col = len(line) - len(line.lstrip())

            while col < len(line):
                # This will return the next 'm' such that m is not null (governed by 'if m [!= None]')
                # and 'm' is the matchObject (or None) returned by (re.match(...) for ptn in re_list)
                while col < len(line):
                    # This will return the next 'm' such that m is not null (governed by 'if m [!= None]')
                    # and 'm' is the matchObject (or None) returned by (re.match(...) for ptn in re_list)
                    try:
                        match = next(m for m in (re.match(ptn, line[col:]) for ptn in re_list) if m)
                    except StopIteration:
                        raise LexerError("Bad token (line %d, column %d): %s" %(line_num, col, line[col:]))

                    yield Token(token_hash[match.re.pattern][0], token_hash[match.re.pattern][1],
                                match.group(1), line, line_num, col)
                    col += match.end(1) + re.match("\s*", line[col + match.end(1):]).end(0)

    yield Token("$", "$", "$", "$", -1, -1)


