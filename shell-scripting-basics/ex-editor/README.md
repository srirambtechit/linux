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


<pre>
<b>Deleting on file</b>

<b>d</b> is used to delete content in the file

Example:
<b>:1 d</b> - deletes line # 1 in that file
<b>:1,4 d</b> - deletes in the given range from line # 1 to 4
<b>:/text1/ d</b> - deletes a line which has text1
</pre>


<pre>
<b>Copy data</b>

<b>co</b> is used for copying a portion of file and paste in the same file

Example:
<b>:1,3 co 4</b> - copy content from line # 1 to 3 and paste it next to line # 4
<b>:1,3 co $</b> - copy content from line # 1 to 3 and paste it end of file
</pre>


<pre>
<b>Write, Exit, Override content</b>

<b>w</b> is used to write changes permanently to file.
<b>q</b> is used to quit from file.
<b>!</b> is used to quit without writing (forcefully quitting) from file

Example:
<b>:q</b> - quit from file
<b>:wq</b> - write and quit from file
<b>:q!</b> - quit without overriding changes to file
</pre>

<pre>
<b>Searching on file</b>

<b>/regex/<b> - regular expression or given pattern to find out in file

Example:
<b>:/hello/ p</b> <code>- find only first occurrence of "hello" in the file</code> 
<b>:g/hello/ p</b> <code>- find all occurrence of "hello" in the file (g - globally)</code>
</pre>

<pre>
<b></b>

Example:

</pre>




