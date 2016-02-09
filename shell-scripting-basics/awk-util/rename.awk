BEGIN {
}

{
	isdir1 = "[ -d " $1 " ] "
	isdir2 = "[ -d " $2 " ] "
	#printf "%s\t %s\t%s\n", isdir1, isdir2, $0

	shell_script="fname2upper.sh"
	awk_script="rename.awk"

	src_file=$1
	dest_file=$2


	if(src_file == shell_script || src_file == awk_script){
		next # skipping if the src/dest is our shell or awk scripting file
	} else if(system(isdir1) == 0 || system(isdir2) == 0) {
		printf "%s or %s is directory can't rename it to lower case\n", src_file, dest_file
		next # no need to process if it is directory
	} else if(src_file == dest_file) {
		printf "Skiping, \"%s\" is alrady in lowercase\n",sfile
		next # both src and dest filenames are upper case
	} else {
		mv_cmd = "mv " src_file " " dest_file
		printf "Renaming file %s to %s\n", src_file, dest_file
#		system(mv_cmd)
	}
}

# clean up if any
END {}
