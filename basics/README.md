<h1>Unix & Linux Shell Scripting</h1>

Different types of shells:-
  - Bourne shell
  - C shell
  - kron shell

<h3>Conditional statements</h3>
<pre>
Syntax:

	if condition
	then
		command1 if condition is true or if exit status
		of condition is 0 (zero)
		...
		...
	fi
</pre>

<pre>
<h4>Arithematic testing</h4>
Operator	Meaning						example		if in test operator		if in expression
-eq			is equal to					5 == 6		if test 5 -eq 6			if [ 5 -eq 6 ]
-ne			is not equal to				5 != 6		if test 5 -ne 6			if [ 5 -ne 6 ]
-lt			is less than				5 < 6		if test 5 -lt 6			if [ 5 -lt 6 ]
-le			is less than or equal to	5 <= 6		if test 5 -le 6			if [ 5 -le 6 ]
-gt			is greater than				5 > 6		if test 5 -gt 6			if [ 5 -gt 6 ]
-ge			is greater than or equal to	5 >= 6		if test 5 -ge 6			if [ 5 -ge 6 ]

<h4>String comparison</h4>
Operator					Meaning
string1 = string2			string1 is equal to string2
string1 != string2			string1 is NOT equal to string2
string1						string1 is NOT NULL or not defined 
-n string1					string1 is NOT NULL and does exist
-z string1					string1 is NULL and does exist


<h4>File testing</h4>
Operator	Meaning
-s file   	Non empty file
-f file   	Is File exist or normal file and not a directory 
-d dir    	Is Directory exist and not a file
-w file  	Is writeable file
-r file   	Is read-only file
-x file   	Is file is executable

<h4>Logical testing</h4>
Operator						Meaning
! expression					Logical NOT
expression1  -a  expression2	Logical AND
expression1  -o  expression2	Logical OR

</pre>