#!/bin/sh

# interrupt handler
del_file() 
{
	rm -rf "/tmp/DBfile.$$"
	echo "Ctrl + C interrupt captured *** cleanup done"
	exit 1
}

# user defined function
get_input() 
{
rc=0
dbfile="/tmp/DBfile.$$"
while :
do
	clear
	echo "User Record Database"
	if [ ! -f $dbfile ]; then
		echo "Database application file created"
		echo "#	Name		Age		Mail" >> $dbfile
	fi
	
	echo -n "Enter name: "
	read name
	echo -n "Enter age: "
	read age
	echo -n "Enter mail: "
	read mail
	
	rc=`expr $rc + 1`
	
	echo $rc ":	" $name "	" $age "	" $mail >> $dbfile
	
	echo -n "Do you want to add record [Y/N]: "
	read ch
	
	if [ $ch = n -o $ch = N ]; then
		echo "Application details"
		cat $dbfile
		rm -rf $dbfile
		return 
	fi
done
}

#
# Set trap to for CTRL+C interrupt i.e. Install our error handler
# When occurs it first it calls del_file() and then exit. 
# Note: trap should be registered before invoking get_input() method
# 
# Uncomment/Comment below line to see the difference
#
#
trap del_file 2

# invoking function
get_input



