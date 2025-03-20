#!/bin/bash

#Introduction to Linux (LFS101) Lab 16.3: Passing Arguments

#Write a script that takes exactly one argument, 
#and prints it back out to standard output. 
#Make sure the script generates a usage message 
#if it is run without giving an argument.

if [ $# -eq 0 ]

then

echo "You have not passed any parameters with the script"

elif [ $# -gt 1 ]

then

echo "You have passed too many arguments with the script"

else

echo "Hello $1"

fi
