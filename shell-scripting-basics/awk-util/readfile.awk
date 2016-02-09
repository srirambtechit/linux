BEGIN {
	# Example: 1
	# execute command and assign output to default variable $0
	"date" | getline
	print $0

	#printf "\n"

	# Example: 2
	# execute command and assign output to user defined variable
	"whoami" | getline user
	print user
}
