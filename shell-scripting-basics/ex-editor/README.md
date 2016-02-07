<h1>Expression Editor</h1>
<pre>
 - Expression editor (known as ex-editor) is an important tool in Linux.
 - Useful for searching word
 - Highly applicable for replacing text by another text
 - Pattern matching
 - Removing particular content of file
 - Duplicating or Copying content of file

 - <b>Pattern:</b> Set of characters (may be words or not) is called pattern.
 
 - <b>Meta character:</b> If patterns are identified using special characters 
 then such special characters are know as meta characters.
 
 - <b>Expression:</b> Combination of pattern and meta characters is 
 know as expressions (regular expressions)
 
 Tools
 	- grep
 	- awk
 	- sed
 	
</pre>

<h3>ex command</h3>
<pre>
<b>Introduction</b>
Syntax:
	ex {file-name}

It opens file in ex-editor at expression (or) command 
mode where command has to enter after :

Example: <b>ex system-log.log</b>


The following commands used for ex-editor data manipulation 
</pre>

<pre>
<b>Print on screen</b>

<b>p</b> is used to print content on console

Example:
<b>:p</b> - it prints first line of file
<b>:4 p</b> - it prints fourth line of file
<b>:1,5 p</b> - it prints from line # 1 to 5
<b>:1,$ p</b> - it prints entire file content

</pre>




