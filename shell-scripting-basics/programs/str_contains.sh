#!/bin/sh
# Input: 1) ./str_contains.sh /bin
#        2) ./str_contains.sh /bin/\*

echo "$1" | grep "*" > /dev/null

if [ "$?" -eq 0 ]; then
 echo "Symbol is not required"
else
 echo "Required. i.e. $1*"
fi
