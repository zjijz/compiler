#!/bin/bash

counter=0

l_input=$1
h_input=$2

# Sanitize lower bound from input
if [[ -z $l_input ]]; then
l_input=0
fi

# Sanitize upper bound from input
if [[ -z $h_input ]]; then
h_input=1000
fi

for file in proj_8_testers/tests/*.ml
do
  name=$(basename "$file")
  name="${name%.*}"

  # Clear file
  > proj_8_testers/output/$name.txt

  # If an error, catch the error and print it to file
  python3.5 compiler.py -t tokens.txt "$file" proj_8_testers/compiled/$name.asm &> proj_8_testers/output/$name.txt

  if ! grep --quiet Traceback proj_8_testers/output/$name.txt; then
    # Clear ouput if not error
    > proj_8_testers/output/$name.txt

    # Run MIPS on file and input
    cat proj_8_testers/input/$name.txt | java -jar ~/mars4_5.jar proj_8_testers/compiled/$name.asm >> proj_8_testers/output/$name.txt
  elif grep --quiet Lexical proj_8_testers/output/$name.txt; then
    echo "Lexical Error" > proj_8_testers/output/$name.txt
  elif grep --quiet Syntax proj_8_testers/output/$name.txt; then
    echo "Syntax Error" > proj_8_testers/output/$name.txt
  elif grep --quiet Semantic proj_8_testers/output/$name.txt; then
    echo "Semantic Error" > proj_8_testers/output/$name.txt
  fi

  # Check output
  if ! diff proj_8_testers/output/$name.txt proj_8_testers/correct/$name.txt; then
    echo "$name failed"
  else
    echo "$name passed"
  fi

  # Incrememnt counter
  counter=$((counter+1))
done

echo "Finished $counter tests"
