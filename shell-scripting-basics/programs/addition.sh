#!/bin/sh

if [ $# -ne 2 ]; then
 echo "Usage: $0 <number1> <number2>"
 exit 1;
fi

echo "$1 + $2 = `expr $1 + $2`"
