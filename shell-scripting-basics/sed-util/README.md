<h1>SED Programming</h1>
  
<h3>Introduction</h3>
<pre>
 - stream editor
 - text transformation on input stream
 - runs only one pass over input
 - supports all ex editor functionality

Syntax:
	sed -option 'general-expression' [data-file]
	sed -option 'sed-script-file' [data-file]
	
	option:-
     -e Read the different sed command from command line.
   	     Ex: <b>$ sed  -e  'sed-commands'    data-file-name
		     $ sed  -e   's/Linux/UNIX(system v)/'    demofile1</b>
		     
     -f Read the sed command from sed script file.
        Ex: <b>$sed   -f   sed-script-file    data-file-name
            $ sed  -f  chgdb.sed    friends.tdb</b>
            
     -n Suppress the output of sed command. 
        When -n is used you must use p command of print flag.
        Ex: <b>$ sed -n  '/^\*..$/p'   demofile2</b>
</pre>

<h3>Output redirection</h3>
<pre>
  -redirecting the sed command output using ">"
   <b>$ sed "s/Linux/HP-Unix/" input.txt > newfile.txt
   $ cat newfile.txt</b>
 
 - deleting all blank lines from file
   <b>$ sed "/^$/d" input.txt > content.txt</b>
   
 - taking input from another command
   <b>$ ls -l | sed -n "/file/p"</b> 
   Note: -n suppress default output, print only matched data 
</pre>

<h3>sed script</h3>
<pre>
 - sed command grouped into a file called sed script file
 
 - for inserting text at given line number
 Syntax:
 	[lineaddress]i\
 	text
 Ex:
 	<b>2i\
 	This is new line</b>
 	
 - for appending text based on matching
 Syntax:
 	/word/ a\
 	text
 Ex:
 	<b>/Rubber/ a\
 	out of stock</b>
 	
 - for changing text at line
 Syntax:
 	[linenumber] c\
 	text
 Ex 1:
 	<b>3c\
 	3. Eraser  3   3.50</b>
 Ex 2:
 	<b>/Rubber/ c\
 	3. Eraser  3   3.50</b>
 	
 - to use this sed file in shell script
   see program: <b>$ sed -f chg.sed inventory.txt</b> 	
</pre>






