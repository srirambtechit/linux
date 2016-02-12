#!/bin/sh

if [ $# -ne 1 ]; then
 echo "Usage: $0 filename"
 exit 1;
fi

if [ ! -f $1 ]
then
 echo "$1 is not exists"
else
 echo "$1 is exists"
fi
