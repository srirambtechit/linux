#!/bin/sh

# if block
echo 'if block demo'
stop=true
if $stop; then
	echo "stop system"
	stop=false
fi

echo

# if else block
echo 'if-else block demo'
if $stop; then
	echo "if block"
else
	echo "else block"
fi

echo

# if-elif-else block
echo 'if-elif-else block demo'
count=2
if [ $count = 1 ]; then
	echo "count is one"
elif [ $count = 2 ]; then
	echo "count is two"
else
	echo "count is other"
fi

# checking negative condition
echo '! operator test'
stop=false
if ! $stop; then
	echo 'negative condition tested'
fi
