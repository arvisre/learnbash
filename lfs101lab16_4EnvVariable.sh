#!/bin/bash

#Introduction to Linux (LFS101) Lab 16.4 Environment Variables

#Write a script which:
#Asks the user for a number, which should be "1" or "2". 
#Any other input should lead to an error report.
#Sets an environmental variable to be "Yes" if it is "1", and "No" if it is "2".
#Exports the environmental variable and displays it.


echo "Enter the number 1 or the number 2"
read num

if [ $num -eq 1 ]

then

envvar="YES"
export envvar
echo "Based on your input the environment variable is $envvar"

elif [ $num -eq 2 ]

then

envvar="NO"
export envvar
echo "Based on your input the environment variable is $envvar"

else

echo "Your input is neither 1 nor 2"

fi

echo "Bye"



