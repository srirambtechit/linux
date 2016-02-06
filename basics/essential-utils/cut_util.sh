#!/bin/sh

if [ $# -eq 0 ]; then
	echo "Usage: ./$0 <data_file>"
	exit 1
fi

cut -f2 $1 > /tmp/sn.tmp.$$
cat /tmp/sn.tmp.$$
