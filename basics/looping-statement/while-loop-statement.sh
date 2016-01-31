#!/bin/sh

echo Looping statement

echo

# while loop
echo "while loop"
n=3
while [ $n -gt 0 ]
do
	echo "Value is $n"
	n=`expr $n - 1`
done

