#!/bin/sh

if [ $# -ne 2 ]; then
	echo "Usage: ./$0 <file1> <file2>"
	exit 1
fi

join $1 $2
