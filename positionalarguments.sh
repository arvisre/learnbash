#!/bin/bash

lines=$(ls -l $1 | wc -l)

#command substitution - list directory contents - word count no.of lines
#assign that to the variable lines

if
	[ $# -ne 1 ]
#if no argument or more than one argument is passed with the script
then
	echo "You must enter exactly one argument along with the script"
else

echo "The number of lines in $1 is $(( lines-1 ))"
fi
#if exactly one argument is passed, then use the arithmetic operator (( ))
#arithmetic operation must be in double braces. if you use single braces.
#then it will be taken as command substitution
#$ sign must be prefixed with double braces
#$(( lines-1 )) is the same as $(( $lines-1 ))
