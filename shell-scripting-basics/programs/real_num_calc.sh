#!/bin/sh

n1=$1
n2=$2

case $3 in
+)z=`echo $n1 + $n2 | bc`;;
-)z=`echo $n1-$n2 | bc`;;
x)z=`echo $n1*$n2 | bc`;;
/)z=`echo $n1/$n2 | bc`;;
*) echo "Unkown operation: please enter +, -, x, /";exit;;
esac

echo "Answer is $z"
