#!/bin/sh

echo "Logical testing"

num=43

if [ $num -gt 10 -a $num -lt 50 ];then
	echo "Criteria matched"
else
	echo "Criteria not matched"
fi