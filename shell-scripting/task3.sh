#3.Write a shell script to find a file in specific directory. 
#a Script should accept user input for path & filename
#b.if path not found or empty then script can take default path as /

#!/bin/bash

#accepting user input for path and filename
echo "Enter the path of directory:"
read path
echo "Enter the filename to search:"
read filename

#setting default path to / if no input provided or path not found
if [ -z "$path" ] || [ ! -d "$path" ]
then
echo "Path not found or empty, setting default path as /"
path="/"
fi

#finding the file in the directory
if [ -f "$path/$filename" ]
then
echo "File found in the directory $path"
else
echo "File not found in the directory $path"
fi

#end of script

