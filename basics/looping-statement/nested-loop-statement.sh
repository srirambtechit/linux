#!/bin/sh

echo Looping statement

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
