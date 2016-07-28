from proj5 import lexer
import lexer_sol
import unittest

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
        """Test a basic input, one per line"""
        token_file = "test_tokens1.txt"
        L = ["begin","fred", "123", "+"]
        compare_output(L, token_file)

    def test02(self):
        """Test basic input, ordering of toekns"""
        token_file = "test_tokens2.txt"
        L = ["begin","fred", "123", "+"]
        compare_output(L, token_file)
        

    def test03(self):
        """Test a basic input, multiple tokens per line"""
        token_file = "test_tokens1.txt"
        L = ["begin fred","fred 123 +"]
        compare_output(L, token_file)

    def test04(self):
        """Check that spacing is ignored"""
        token_file = "test_tokens1.txt"
        L = ["  begin fred     123", "  18  +     begin   "]
        compare_output(L, token_file)

    def test05(self):
        """Check consecutive operators"""
        token_file = "test_tokens1.txt"
        L = ["++*++", "**+**"]
        compare_output(L, token_file)

    def test06(self):
        """Check reserved"""
        token_file = "test_tokens1.txt"
        L = ["begin begin1234", "end1234 end"];
        compare_output(L, token_file)

    def test07(self):
        """Check reserved, order"""
        token_file = "test_tokens2.txt"
        L = ["begin begin1234", "end1234 end"];
        compare_output(L, token_file)                

    def test08(Self):
        """Check reserved followed by \W"""
        token_file = "test_tokens1.txt"
        L = ["begin("]
        compare_output(L, token_file)
        
    def test09(self):
        """Check id."""
        token_file = "test_tokens2.txt"
        L = ["xyz xyz1234 1234xyz 1234 xyz"]
        compare_output(L, token_file)

    def test10(self):
        """Check airthmatic symbols."""
        token_file = "test_tokens1.txt"
        L = ["123+456*789"]
        compare_output(L, token_file)
        
          

def run_tests():
    suite = unittest.TestLoader().loadTestsFromTestCase(LexerTesting)
    testResult = unittest.TextTestRunner(verbosity=2).run(suite)

if __name__ == "__man__":
    run_tests()
