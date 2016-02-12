#!/bin/sh

if [ $# != 3 ]; then
 echo "Usage: $0 <N1> <operation> <N2>"
 echo "N1, N2 are numeric values; operation can be +, -, x or X or /"
 exit 1;
fi

case $2 in
+) let z=$1+$3;;
-) let z=$1-$3;;
x|X) let z=$1*$3;;
/) let z=$1/$3;;
*) echo "Unknow operation";;
esac

echo "Answer is $z"
