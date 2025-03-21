#!/bin/bash

#Introduction to Linux (LFS101) Lab 16.5: Working with Functions
#Write a script which:
#Asks the user for a number (1, 2 or 3).
#Calls a function with that number in its name. 
#The function should display a message with its name included.

func1()
{
echo "This is Function$n"
}

func2()
{
echo "This is Function$n"
}

func3()
{
echo "This is Function$n"
}

echo "Enter 1, 2, or 3 to call a particular function"
read n

func$n
