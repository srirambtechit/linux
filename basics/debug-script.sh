#!/bin/sh
# script to show debug of shell
# run this script two ways for debugging
# a) sh -x debug-script.sh  # tells how the values are used in script
# b) sh -v debug-script.sh  # tells complex flow of script execution - detailed statement

tot=`expr $1 + $2`
echo sum $tot
