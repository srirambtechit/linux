#!/bin/sh

if [ $# -ne 1 ];then
 echo "Usage: $0 number"
 exit 1;
fi

num=$1
ans=0

while [ $num -gt 0 ]
do
 let q=$num/10
 let r=$num%10
 let ans=$ans*10+$r
 num=$q
done

echo "Reverse of $1 is $ans"
