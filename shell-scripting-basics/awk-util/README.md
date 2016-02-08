<h1>AWK Programming</h1>
  
<h3>Introduction</h3>
<pre>
 - scripting language
 - powerful data processing tool
 - has it own programming style

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
 1. <b>awk -f num_item inven.txt</b>
 2. <b>awk -f num_item inven.txt | grep "pgm 1"</b>
 3. <b>awk -f num_item inven.txt | grep "pgm 2"</b>
 4. <b>awk -f num_item inven.txt | grep "pgm 3"</b>
</pre>






