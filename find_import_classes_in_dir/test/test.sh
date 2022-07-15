#!/bin/bash
assert() {
  expected="$1"
  actual="$2"

  if [ "$actual" = "$expected" ]; then
    echo "input is ~~~~ "
    echo  "$actual"
    echo "actual is ~~~~ " 
    echo "$actual"
    echo "~~~~ test is ok ~~~~"
  else
    echo "input is ~~~~ "
    echo  "$actual"
    echo "actual is ~~~~ " 
    echo "$actual"
    echo "test is faild"
    exit 1
  fi
}

../script.sh

assert "$(cat output.txt)" "import aaa
import bbb
import ccc"

rm output.txt
