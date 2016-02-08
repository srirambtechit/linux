BEGIN {
 print "--------------------------"
 print " Bill for month of Apr'16 "
 print "--------------------------"
}

{
	total = $3 * $4
	recno = $1
	item = $2
	gtotal = gtotal + total
	printf "%2d. %-10s Rs.%4d\n", recno, item, total
}

END {
 print "--------------------------"
 printf "%4s%-10s Rs.%4d\n", "", "Total", gtotal
 print "--------------------------"
}
