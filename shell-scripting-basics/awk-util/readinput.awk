BEGIN {
	printf "Your name please:"
	getline na < "-"
	printf "%s your age please:", na
	getline age < "-"
	print "Hello " na ", next year you will be " age + 1
}
