#!/bin/sh

echo 'Testing string data'

str1=Sriram
str2=Sriram

if test $str1 = $str2
then
	echo "$str1 is equal to $str2"
else
	echo "$str1 is not equal to $str2"
fi

if [ "$str1" = "Srirm" ]; then
	echo "Matched"
fi