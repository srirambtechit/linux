#!/bin/sh

if [ $# -ne 2 ]; then
	echo "./$0 <file1> <file2>"
	exit 1
fi

# take two files and joins together
paste $1 $2
