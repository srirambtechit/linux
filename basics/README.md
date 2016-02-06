<h1>Unix & Linux Shell Scripting</h1>

Different types of shells:-
  - Bourne shell
  - C shell
  - kron shell

<h3>Command line arguments</h3>
<pre>
$# - Returns no of input arguments to script
$@ - Returns full argument as string
$* - Returns full argument as string
$? - Returns last executed command's exit status
$0 - Returns currently executing scripts name
$1 - Returns 1st argument
$2, $3,... $9 - Returns 2nd, 3rd,...till 9th arguments respectively
${10}, ${11}, ${arg_position} - to access arguments beyond the 9
</pre>

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

<h3>Looping statements</h3>
 - For loop
 - While loop
 
<h3>Advance concepts</h3>
<pre>
/dev/null - This is special Linux file which is used to send any unwanted output from program/command.
Ex: $ ls > /dev/null # it won't display output in console
</pre>

<h3>Variable scope</h3>
<pre>
As in other programming, shell scripting also has two important scope to define variable
- Local variable - visible within the shell
- Global variable - visible to other shell
Ex: 
name=Sriram # name is local variable
echo $name 
export name # exporting local variable as global
# Now I am moving to next shell
/bin/sh
echo $name # returns the name
</pre>

<h3>IO Redirection and Piping</h3>
<pre>
> - It redirect output to some other standard output streams like file, disk, network
Ex: 
$ ls -ltrh > list.txt

>> - does same as >, but append at end of the file
Ex: 
$ ls -h >> list.txt

< - Redirect input stream to command 
Ex: 
$ sort < names.txt

2> - represents standard error output stream
Ex:
$ rm asdf 				# returns No such file or directory error 
$ rm asdf 2> /dev/null   # suppress the error


StdIn - 0
StdOut - 1
StdErr - 2
To redirect from one IO to another below syntax
from>&destination
Ex: echo "Error occurred" 1>&2 # it redirect stdout to stderr

<i>See example:</i> <b>advanced-concepts/redirect-output.sh</b>
<i>See example:</i> <b>advanced-concepts/supress-error.sh</b>
</pre>


<h3>Conditional execution i.e. && and ||</h3>
&& and || operator has short circuit behavior
<i>See example:</i> <b>advanced-concepts/cond-cmd-execution.sh</b>

<h3>Trap command</h3>
<pre>
To capture interrupt signal via script for special cases 
like resource cleanup, invoking other script, to do post processing
 
<b>Signal Number      When occurs</b>
0                     shell exit 
1                     hangup
2                     interrupt (CTRL+C)
3                     quit 
9                     kill (cannot be caught)

<i>See example:</i> <b>programs/trap-program.sh</b>

</pre>