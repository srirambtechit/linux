#!/bin/sh

if [ $# -ne 3 ]; then
 echo "Usage: $0 <from> <to> <filename>"
 echo "where"
 echo "from - from line number"
 echo "to - to line number"
 echo "filename - name of file"
 exit 1;
fi

if [ -e $3 ]
then
 tail -n+$1 $3 | head -n+$2
else
 echo "Error opening file $3"
 exit 1
fi
