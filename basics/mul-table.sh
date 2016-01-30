#!/bin/sh

if [ $# -ne 1 ]; then
	echo "Error--> Usage: ./mul-table <table_number>"
	exit;
fi

table_number=$1
step=1
echo Multiplication table - $table_number
while [ $step -lt 10 ]; 
do
	echo "$step * $table_number =" $(($table_number * $step))
	step=`expr $step + 1`
done