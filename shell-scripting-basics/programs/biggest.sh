#!/bin/sh

if [ $# -ne 3 ]; then
 echo "Usage: $0 <number1> <number2> <number3>"
 exit 1;
fi

if [ $1 -gt $2 -a $1 -gt $3 ]; then
 max=$1
elif [ $2 -gt $3 ]; then
 max=$2
else
 max=$3
fi

echo "Biggest of $1, $2 and $3 is $max"
