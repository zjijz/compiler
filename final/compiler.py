import sys
import argparse
from MLparser import *
from code_generator import *


def compiler(source, tokens, output, is_debug, is_safe):
    if is_debug:
        # For testing
        print('Compiling "{:s}" into "{:s}" using "{:s}" for tokens\n'.format(source, output, tokens))
    # Only prints the huge stack trace in debugging mode
    sys.tracebacklimit = 0 if is_debug else 1
    CodeGenerator(Parser(is_debug).parse(source, tokens), output, is_debug, is_safe).compile()


if __name__ == "__main__":  # Only true if program invoked from the command line

    # Use the argparse library to parse the commandline arguments
    parser = argparse.ArgumentParser(description = "GroupX micro-language compiler")
    parser.add_argument('-t', type = str, dest = 'token_file',
                       help = "Token file", default = 'tokens.txt')
    parser.add_argument('-s', dest = 'safe_mode', action = 'store_true')
    parser.add_argument('-d', dest = 'debug_mode', action = 'store_true')
    parser.set_defaults(safe_mode=False, debug_mode=False)
    parser.add_argument('source_file', type = str,
                        help = "Source-code file", default = 'tokens.txt')
    parser.add_argument('output_file', type = str,
                        help = 'output file name')

    args = parser.parse_args()

    # Call the compiler function
    compiler(args.source_file, args.token_file, args.output_file, args.debug_mode, args.safe_mode)
