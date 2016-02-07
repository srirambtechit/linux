#!/bin/sh
# shift command used to adjust the position paramas of 
# input arguments, shift <pos> where pos represents 
# no. of position to move from left to right in 
# argument list

echo "input \$1=$1	\$2=$2	\$3=$3	\$4=$4	\$5=$5"
shift
echo "input \$1=$1	\$2=$2	\$3=$3	\$4=$4	\$5=$5"
