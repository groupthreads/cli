import os
import sys

def main():
    if len(sys.argv) <= 1:
        os.system('make -f instructions.gt')
    elif len(sys.argv) == 2:
        os.system('make -f instructions.gt ' + sys.argv[1])

main()
