#!/bin/sh

if [ $# -ne 1 ]; then
 echo "Usage: $0 number"
 exit 1
fi

n=$1
sum=0

while [ $n -gt 0 ]
do
 let sum=$sum+$n%10
 let n=$n/10
done

echo "sum of digit of $1 is $sum"
