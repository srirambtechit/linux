#!/bin/sh

while :
do
	clear
	echo "----------------------------------------------------"
	echo "|                     List Of Menu                 |"
	echo "----------------------------------------------------"
	echo "[1] Show today date/time"
	echo "[2] Show files in current directory"
	echo "[3] Show calendar"
	echo "[4] Open editor"
	echo "[5] Stop/Exit Program"
	echo
	echo -n "Enter choice[1-5]: "
	read ch
	case $ch in
		1) echo "Todays date is `date`, Press a key . . . "; read;;
		2) echo "Files in `pwd`"; ls -l ; echo "Press a key . . . " ; read ;; 
		3) cal ; echo "Press a key . . . "; read ;;
		4) vi;;
		5) exit 0;;
		*) echo "OOPS!!! Please select correct option [1-5]"; read ;;
	esac
done