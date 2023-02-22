#2. Write a shell script to print file content details. 
#Like No of Words, lines, characters.
#You must accept input from the user. 

#!/bin/bash
echo Enter the filename
read file
c=`cat $file | wc -c`
w=`cat $file | wc -w`
l=`grep -c "." $file`
echo Number of characters in $file is $c
echo Number of words in $file is $w
echo Number of lines in $file is $l


