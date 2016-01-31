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

# for loop in nested
echo "nested for loop"
for((m=0;m<5;m++))
do
	for((n=0;n<5;n++))
	do
		echo -n "($m, $n) "
	done
	echo
done

echo

# while loop
echo "while loop"
n=3
while [ $n -gt 0 ]
do
	echo "Value is $n"
	n=`expr $n - 1`
done

