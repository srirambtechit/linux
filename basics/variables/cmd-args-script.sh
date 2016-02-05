#!/bin/sh

echo Total args $#
echo Full args $@
echo Full args $*

# Iterating all input args
i=1
for arg in $@
do
	echo "$i --> $arg"
	i=`expr $i + 1`
done

echo "9th arg $9"
echo "3rd arg $3"
echo "10th arg $10"  	# Notice that special variables for command line arguments are from $1 to $9
echo "10th arg ${10}"	# To go beyond the variable limit ${x}
echo "5th arg ${5}"