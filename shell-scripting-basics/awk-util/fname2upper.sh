#!/bin/sh

if [ $# != 1 ]; then
	echo "Usage: ./$0 <directory>"	
	exit 1;
fi

AWK_SCRIPT="rename.awk"

# getting path from user input
dir_path=$1

# getting the list of files in the given path	
ls -1 $dir_path > /tmp/flist.in.$$

# converting the file content to upper case
tr "[a-z]" "[A-Z]" < /tmp/flist.in.$$ > /tmp/flist.out.$$

paste /tmp/flist.in.$$ /tmp/flist.out.$$ > /tmp/final_flist.$$

#rm -f /tmp/flist.in.$$
#rm -rf /tmp/flist.out.$$

if [ -f $AWK_SCRIPT ]; then
	awk -f $AWK_SCRIPT /tmp/final_flist.$$
else
	echo -e "\n$0: Fatal error - $AWK_SCRIPT not found"
fi

# once work done, clean up
#rm -f /tmp/final_flist.$$
