#!/bin/sh

if [ $# -ne 1 ]; then
 echo "Usage: $0 <limit>"
 echo "where limit is a number to start from"
 exit 1;
fi

limit=$1
while [ $limit -gt 0 ]
do
	echo -n $limit " "
	limit=`expr $limit - 1`
done

echo ""
