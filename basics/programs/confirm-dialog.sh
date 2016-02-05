#!/bin/sh

dialog --title "Alert : Delete File" --backtitle "Linux Shell Script\
Tutorial" --yesno "\nDo you want to delete '/usr/letters/jobapplication'\
file" 7 60
sel=$?
case $sel in
   0) echo "User select to delete file";;
   1) echo "User select not to delete file";;
   255) echo "Canceled by user by pressing [ESC] key";;
esac