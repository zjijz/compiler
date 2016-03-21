class LexerError(Exception):
    """
    Exception to be thrown when the lexer encounters a bad token.
    """
    def __init__(self, msg):
        self.msg = "Lexical error: " + msg

    def __str__(self):
        return str(self.msg)

class ParserError(Exception):
    """
    Exception to be thrown when MLparser encounters an incorrect string
    """
    def __init__(self, msg):
        self.msg = msg

    def __str__(self):
        return self.msg

class SemanticError(Exception):
    @staticmethod
    def raise_initialization_error(variable, line, col):
        raise SemanticError('Semantic error: Line num: {:d}, column num: {:d}\n\t{:s} not initialized before use.'\
                            .format(line, col, variable))

    def __init__(self, msg):
        self.msg = msg

    def __str__(self):
        return self.msg