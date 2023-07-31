#!/bin/bash

#script is executed with three given arguments (one is directory name and the second is the start number of directories and the third is the end number of directories ) it creates a specified number of directories with a dynamic directory name.

#usage ./1_multiple_directory_create_using_shell_script.sh lab 1 10 

#mkdir day{1..10} #we can use this single command to create tthe multiple directories at a time
                          #but same thing we can achieve using shell script lets go..


#taking commandline arguments as inputs.  $1 means first argument and so on 
directoryName=$1
startNumber=$2
endNumber=$3

for (( i=startNumber; i<=endNumber; i++ ))
do
	mkdir $directoryName$i
	echo $directoryName$i
done
