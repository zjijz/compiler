from proj5 import lexer
import lexer_sol
import unittest
import re

def create_file(str_list):
    with open("test.txt", "w") as fp:
        fp.write("\n".join(str_list) + "\n")

def compare_output(str_list, token_file):
    create_file(str_list)
    G_student = list(lexer.lexer("test.txt", token_file))
    G_sol = list(lexer_sol.lexer("test.txt", token_file))
    
    if (len(G_student) != len(G_sol)):
        return False

    return all([x == y for x,y in zip(G_student,G_sol)])
                   
    
class LexerTesting(unittest.TestCase):
    

    def test01(self):
        """Check comment at beginning of line"""
        token_file = "test_tokens1.txt"
        L = ["abc def ", "# here is the first comment", "abc def"]
        compare_output(L, token_file)

    def test02(self):
        """Check comment in middle of line"""
        token_file = "test_tokens1.txt"
        L = ["abc def ", "abc def # here is the first comment", "abc def"]
        compare_output(L, token_file)

    def test03(self):
        """Check that StopIteration is correctly thrown"""
        L = ["abcd"]
        create_file(L)
        G = lexer.lexer("test.txt", "test_tokens1.txt")
        with self.assertRaises(StopIteration):
            while (True):
                next(G)


    def test04(self):
        """Check error throwing."""
        token_file = "test_tokens1.txt"
        L = ["abc xyz", "123 456", "12+27-15%8"]
        create_file(L)
        G = lexer.lexer("test.txt", "test_tokens1.txt")
        with self.assertRaises(lexer.LexerError):
            while (True):
                next(G)


    def test05(self):
        """Check line number and column number in error message (col == 0)"""
        L = ["abc def", "% 7"]
        create_file(L)
        G = lexer.lexer("test.txt", "test_tokens1.txt")
        try:
            while (True):
                next(G)
        except lexer.LexerError as e:
            self.assertTrue(re.search("line\s+2", str(e)) and re.search("(col|column)\s+0", str(e)))
        else:
            self.assertTrue(False)

    def test06(self):
        """Check line number and column number in error message (col > 0)"""
        L = ["abc def", "begin", "5+6-7*3"]
        create_file(L)
        G = lexer.lexer("test.txt", "test_tokens1.txt")
        try:
            while (True):
                next(G)
        except lexer.LexerError as e:
            self.assertTrue(re.search("line\s+3", str(e)) and re.search("(col|column)\s+3", str(e)))
        else:
            self.assertTrue(False)            

def run_tests():
    suite = unittest.TestLoader().loadTestsFromTestCase(LexerTesting)
    testResult = unittest.TextTestRunner(verbosity=2).run(suite)

if __name__ == "__man__":
    run_tests()
