#!/bin/sh

# To run this script
# ./special-variables.sh arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9

# Following variables are special purpose variables
echo "Script file name      : " $0 		# returns current running script file name
echo "Running process ID    : " $$		# returns currenly running script's process id

echo 									# for new line

# Command line argument
echo "First argument   : " $1  		# 1st input parameter
echo "Second argument  : " $2  		# 2nd input parameter
echo "Third argument   : " $3  		# 3rd input parameter
echo "Fourth argument  : " $4  		# 4th input parameter
echo "Fifth argument   : " $5  		# 5th input parameter
echo "Sixth argument   : " $6  		# 6th input parameter
echo "Seventh argument : " $7  		# 7th input parameter
echo "Eighth argument  : " $8  		# 8th input parameter
echo "Ninth argument   : " $9  		# 9th input parameter
echo "Number of arg    : " $#  		# Number of input parameter
echo "Full param str   : " $@		# Returns full argument as a single string