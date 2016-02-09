BEGIN {}

# main script
{
	src = $1
	dest = $2
	cp_cmd = "cp " src " " dest
	status = system(cp_cmd)
	if(status != 0) {
		printf "Error in copying %s to %s\n ", src, dest 
	}else {
		printf "File copied\n"
	}
}

END {}