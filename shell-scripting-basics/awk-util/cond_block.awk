BEGIN {
	printf "To stop press Ctrl + D\n"
	printf "conditional block demo\n"
}

{
	num1 = $1
	op = $2
	num2 = $3
	
	if(op == "+") {
		printf "%3d %s %3d = %3d\n", num1, op, num2, num1 + num2
	}
	else if(op == "-") {
		printf "%3d %s %3d = %3d\n", num1, op, num2, num1 - num2
	}

}

END {
	printf "Completed!\n"
}