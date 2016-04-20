#!/bin/bash

for file in proj_7_testers/tests/*.txt
do
  name=$(basename "$file")
  name="${name%.*}"

  arg1=$(($1+0))
  arg2=$(($1+0))
  nameInt = $(($name+0))

  if [ "$nameInt" -lt "$arg1" ] || [ "$arg2" -lt "$nameInt" ]; then
     continue
  fi

  # Clear file
  > proj_7_testers/output/$name.txt

  # If an error, catch the error and print it to file
  python3.5 compiler.py -t tokens.txt "$file" proj_7_testers/compiled/$name.asm &> proj_7_testers/output/$name.txt

  if ! grep --quiet Traceback proj_7_testers/output/$name.txt; then
    # Clear ouput if not error
    > proj_7_testers/output/$name.txt

    # Run MIPS on file and input
    cat proj_7_testers/input/$name.txt | java -jar ~/mars4_5.jar proj_7_testers/compiled/$name.asm >> proj_7_testers/output/$name.txt
  elif grep --quiet Lexical proj_7_testers/output/$name.txt; then
    echo "Lexical Error" > proj_7_testers/output/$name.txt
  elif grep --quiet Syntax proj_7_testers/output/$name.txt; then
    echo "Syntax Error" > proj_7_testers/output/$name.txt
  elif grep --quiet Semantic proj_7_testers/output/$name.txt; then
    echo "Semantic Error" > proj_7_testers/output/$name.txt
  fi

  # Check output
  if ! diff proj_7_testers/output/$name.txt proj_7_testers/correct/$name.txt; then
    echo "$name failed"
  else
    echo "$name passed"
  fi
done
