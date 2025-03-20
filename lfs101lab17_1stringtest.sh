#!/bin/bash

#Write a script which reads two strings as arguments and then:
#Tests to see if the first string is of zero length,
#and if the other is of non-zero length, telling the user of both results.
#Determines the length of each string, 
#and reports on which one is longer or if they are of equal length.
#Compares the strings to see if they are the same, and reports on the result.

echo "Enter String 1: "
read str1

echo "Enter String 2: "
read str2

str1len=${#str1}
str2len=${#str2}

#echo "$str1len" "$str2len"

if
	[[ "$str1len" -eq 0 ]]
then
sleep 1
	echo "Length of String 1 is 0"
else
sleep 1
	echo "Length of String 1 is not 0"
fi

if
	[[ "$str2len" -ne 0 ]]
then
sleep 1
	echo "Length of String 2 is not 0"
else
sleep 1
	echo "Length of String 2 is 0"
fi

if
	[[ "$str1len" -eq "$str2len" ]]
then
sleep 1
	echo "Both Strings are of equal length"
elif
	[[ "$str1len" -gt "str2len" ]]
then
sleep 1
	echo "String 1 is longer than String 2"
else
sleep 1
	echo "String 2 is longer than String 1"
fi

if
	[[ "$str1" == "$str2" ]]
then
sleep 1
	echo "Both String 1 and String 2 are the same"
else
sleep 1
	echo "String 1 and String 2 are different"
fi
