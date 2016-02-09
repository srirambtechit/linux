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

<h3></h3>
<pre>

</pre>
