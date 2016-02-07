#!/bin/sh
echo 'Case demo'

echo

# case block
echo 'case block demo'
option=3
case $option in
	1) echo "option 1 selected";;
	2) echo "option 2 selected";;
	3) echo "option 3 selected";;
	*) echo "Unknown option selected";;
esac

echo
