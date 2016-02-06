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

<i>See program:</i> <b>advanced-concepts/redirect-output.sh</b>
<i>See program:</i> <b>advanced-concepts/supress-error.sh</b>
</pre>


<h3>Conditional execution i.e. && and ||</h3>
&& and || operator has short circuit behavior
<i>See program:</i> <b>advanced-concepts/cond-cmd-execution.sh</b>

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

<i>See program:</i> <b>advanced-concepts/trap-program.sh</b>
</pre>

<h3>Shilft command</h3>
<pre>
The shift command moves the current values stored in the positional
 parameters (command line args) to the left one position.

<i>See program:</i> <b>advanced-concepts/shift_demo.sh</b>
<i>See program:</i> <b>advanced-concepts/ns_converter.sh</b>
</pre>

<h3>getopts command</h3>
<pre>
This command is used to check valid command line argument are passed to script. Usually used in while loop.
Syntax:
getopts {optsring} {variable1}

getopts is used by shell to parse command line argument.
As defined in man pages:
"optstring contains the option letters to be recognized; if a letter is followed by a colon, 
the option is expected to have an argument, which should be separated from it by white space. 
Each time it is invoked, getopts places the next option in the shell variable variable1, 
When an option requires an argument, getopts places that argument into the variable OPTARG. 
On errors getopts diagnostic messages are printed when illegal options or missing option 
arguments are encountered. If an illegal option is seen, getopts places ? into variable1."

Examlpe:
We have script called ani which has syntax as
ani -n -a -s -w -d
Options: These are optional argument
    -n name of animal
    -a age of animal
    -s sex of animal
    -w weight of animal
    -d demo values (if any of the above options are used their values are not taken)

<i>See program:</i> <b>advanced-concepts/ani.sh</b>    
</pre>

<h3>Essential Utils - Data manipulation</h3>
<pre>
<b>cut command:</b> Useful for extracting data from structured file
Syntax:
cut -f{field number} {file-name}

Use of Cut utility:
Selecting portion of a file.

<i>See program:</i> essential-utils/cut_util.sh
Example: ./cut_util.sh sname.txt smark.txt
</pre>


<pre>
<b>paste command:</b> Paste utility join textual information together
Syntax:
paste {file1} {file2}

Use of paste utility:
Putting lines together.

<i>See program:</i> essential-utils/paste_util.sh
Example: ./paste_util.sh sname.txt smark.txt
</pre>

<pre>
<b>join command:</b> To join to files based on two common field in both files.

Syntax:
join {file1} {file2}

Use of join utility:
The join utility joins, lines from separate files.

<b>Note:</b> that join will only work, if there is common field in both file and if values are identical to each other.

<i>See program:</i> essential-utils/join_util.sh
Example: ./join_util.sh sname.txt smark.txt
</pre>


<pre>
<b>Type case command:</b> Translating character case from upper to lower or vice versa.
Syntax:
tr {pattern-1} {pattern-2}

Use of tr utility:
To translate range of characters into other range of characters.

<code>$ tr "a" "e" < sname.txt</code> Replace all occurrence of 'a' in sname.txt as 'e'
<code>$ tr "[a-z]" "[A-Z]" < sname.txt</code> Change all character to Upper case
</pre>


<pre>
<b>awk command:</b> scan record from file line by line and perform the action if search pattern matches

Syntax:
awk 'pattern action' {file-name}

Example: 
1. <code>$ awk '/good/ { print $3 }' inventory.txt</code>
2. <code>$ awk '/good/ { print $1 " " $3 }' inventory.txt</code>
</pre>

<pre>
<b>sed command:</b>Use of sed utility: sed is used to edit (text transformation) on given stream i.e a file or may be 
input from a pipeline. sed utility is used to find every occurrence of given word and replace it with another word. 
sed - "Steam line editor" which uses 'ex' editors command for editing text files without starting ex.

Syntax:
sed {expression} {file}

Example: <code>sed '/tea/s//milk/g' teaormilk</code>
</pre>

<pre>
<b>uniq command:</b> remove subsequent duplication from file or input stream 

Syntax:
uniq {file-name}

Example: 
1. <code>uniq dup.txt</code> removes adjacent duplicate data but still duplicate data exists which are not adjacent.
2. <code>sort dup.txt | uniq</code> removes all duplicate data
</pre>

<pre>
<b>grep command:</b> search given text pattern in file or input stream

Syntax:
grep {pattern} {file-name}

Example:
<code> grep "too" content.txt</code>
</pre>






