<h1>AWK Programming</h1>
  
<h3>Introduction</h3>
<pre>
 - scripting language
 - powerful data processing tool
 - has it own programming style
 - C style programming

Syntax:
	awk -f { awk-program-file } data-file
 
 where awk-program-file as 
 
  pattern {
  	action 1
  	action 2
  	...
  	action n
  }

<b>How works:</b> 
 - reads line by line from data-file
 - try to match with pattern
 - if pattern matches, do the action
 - pattern can be regular expression
 
<b>awk meta characters</b>
Metacharacter       Meaning
   .(Dot)        Match any character
   *             Match zero or more character
   ^             Match beginning of line
   $             Match end of line
   \             Escape character following
  [ ]            List
  { }            Match range of instance
   +             Match one more preceding
   ?             Match zero or one preceding
   |             Separate choices to match
    
</pre>


<h3>awk basic usage</h3>
<pre>
Method 1:-
$ awk { awk program } data-file

<b>Example:</b> 
$ awk { print $1 " " $2 } inven.txt

Method 2:-
$ awk -f awk-pgm-file data-file
Example:
$vi awk-pgm-file
/Pen/ { print $1 " " $2 } #filters line contains "Pen" word

$ awk -f awk-pgm-file inven.txt

See: 
 1. <b>awk -f num_item.awk inven.txt</b>
 2. <b>awk -f num_item.awk inven.txt | grep "pgm 1"</b>
 3. <b>awk -f num_item.awk inven.txt | grep "pgm 2"</b>
 4. <b>awk -f num_item.awk inven.txt | grep "pgm 3"</b>
</pre>

<h3>Predefined variable</h3>
<pre>
<b>awk_Variable        Meaning</b>
FILENAME            Name of current input file
RS                  Input record separator character (Default is new line)
OFS                 Output field separator string (Blank is default)
ORS                 Output record separator string (Default is new line)
NF                  Number of input record
NR                  Number of fields in input record
OFMT                Output format of number
FS                  Field separator character (Blank & tab is default)

$0 - returns whole line as string
$1, $2, $3, ... - represents fields in the line

see program: <b>awk -f def_var.awk inven.txt</b>
</pre>

<h3>arithmetic in awk</h3>
<pre>
Normal arithmetic operators used such as +, -, *, /, mod

see program: <b> awk -f math.awk</b> and give two params as input
</pre>

<h3>awk program structure</h3>
<pre>
 - user define variable created on the fly
 - BEGIN, END block execute only once
 - BEGIN runs before reading input from stream
 - END runs after reading input from stream 
 - structure of program:-
		 BEGIN {
		  ...
		 }
		 
		 {...}
		 
		 END {
		  ...
		 }
		 
see program: <b>awk -f bill.awk inven.txt</b>		 
</pre>


<h3>formatted output</h3>
<pre>
 - To format output, use printf 
 %d - number data
 %c - character data Ex: gender = "M" (note double quotes used)
 %x - hex value
 %s - string data
 
 format spec:-
 |%5d| - 5 character space allocated also right justified
 |%-5d| - left justified (minus used)

see program: <b>awk -f format.awk</b> (then hit enter)
</pre>


<h3>conditional statement</h3>
<pre>
 - if-else block for decision making

see program: <b>awk -f cond_block.awk</b> (hit enter and pass three params like 10 + 3)
</pre>

<h3>looping statement</h3>
<pre>
 - Two types of loop is available
 	- for loop
 	- while loop
 - to perform repeated task

see program: <b>awk -f for_loop.awk</b>
see program: <b>awk -f while_loop.awk</b>
</pre>

<h3>Sample programs</h3>
<pre>
1. Copy files from one place to another from the given input file
see program: <b>awk -f filecopy.awk filelist.conf</b>

2.As I write visual installation guide, I use to capture lot of images for my work, 
  while capturing images I saved all images (i.e. file names) in UPPER CASE
  for e.g. RH7x01.JPG,RH7x02.JPG,...RH7x138.JPG. Now I would like to rename all 
  files to lowercase
see program: <b>./fname2upper.sh /home/sriram/demo<dir_path></b>

3.Getting input from user in awk programming (getline na < "-")
see program: 
1. <b>awk -f readinput.awk</b>
2. <b>awk -f readfile.awk</b>
</pre>





