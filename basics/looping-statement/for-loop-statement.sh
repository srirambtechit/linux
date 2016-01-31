#!/bin/sh

echo Looping statement

echo

# for loop - list style
echo "for loop - list style"
for i in 1 2 3 4 5
do
	echo "number is $i"
done

echo

# for loop - C style
echo "for loop - C style"
for(( j = 1 ; j <  5 ; j++ ))
do
	echo "Welcome $j"
done

echo
