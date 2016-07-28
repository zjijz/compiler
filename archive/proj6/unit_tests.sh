#!/bin/bash

for file in proj_6_testers/tests/*.txt
do
  name=$(basename "$file")
  name="${name%.*}"

  # Clear file
  > proj_6_testers/output/$name.txt

  # If an error, catch the error and print it to file
  python3.5 compiler.py -t tokens.txt "$file" proj_6_testers/compiled/$name.asm &> proj_6_testers/output/$name.txt

  if ! grep --quiet Traceback proj_6_testers/output/$name.txt; then
    # Clear ouput if not error
    > proj_6_testers/output/$name.txt

    # Run MIPS on file and input
    cat proj_6_testers/input/$name.txt | java -jar ~/mars4_5.jar proj_6_testers/compiled/$name.asm >> proj_6_testers/output/$name.txt
  elif grep --quiet Lexical proj_6_testers/output/$name.txt; then
    echo "Lexical Error" > proj_6_testers/output/$name.txt
  elif grep --quiet Syntax proj_6_testers/output/$name.txt; then
    echo "Syntax Error" > proj_6_testers/output/$name.txt
  elif grep --quiet Semantic proj_6_testers/output/$name.txt; then
    echo "Semantic Error" > proj_6_testers/output/$name.txt
  fi

  # Check output
  if ! diff proj_6_testers/output/$name.txt proj_6_testers/correct/$name.txt; then
    echo "$name failed"
  else
    echo "$name passed"
  fi
done
