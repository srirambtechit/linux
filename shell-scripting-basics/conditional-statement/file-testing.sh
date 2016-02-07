#!/bin/sh

echo "Testing files in the dir"

file1_location=/home/sriram/git/linux-scripting/basics/conditional-statement/test-condition.sh
file2_location=/home/sriram/git/linux-scripting/basics/conditional-statement/test-condition

if [ -f $file1_location ]; then
	echo 'File found'
else
	echo 'File not found'
fi

if [ -f $file2_location ]; then
	echo 'File found'
else
	echo 'File not found'
fi

if test -d /home/sriram
then
	echo 'Path exists'
else
	echo 'Path not exists'
fi