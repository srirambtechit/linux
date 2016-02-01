#!/bin/sh

echo Basic calculator

echo "1 - add (+)"
echo "2 - subtraction (-)"
echo "3 - multiplication (*)"
echo "4 - division (/)"

echo
echo "Enter option: "
read option
echo "Enter number 1: "
read num1
echo "Enter number 2: "
read num2
echo
case $option in
1) echo $num1 + $num2 = `expr $num1 + $num2`;;
2) echo $num1 - $num2 = `expr $num1 - $num2`;;
3) echo $num1 \* $num2 = `expr $num1 \* $num2`;;
4) echo $num1 / $num2 = `expr $num1 / $num2`;;
esac