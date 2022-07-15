#!/bin/bash
find . -type f -name "*.java" | xargs -n 1 -IFILE bash -c 'grep import FILE >> temp.txt'
cat temp.txt | sort | uniq > output.txt
rm temp.txt
