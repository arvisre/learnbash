#!/bin/bash

#Introduction to Linux (LFS101) Lab 16.2 Working with Files and Directories in a Script

#Prompts the user for a directory name and then creates it with mkdir.
#Changes to the new directory and prints out where it is using pwd.
#Using touch, creates several empty files and runs ls on them to verify they are empty.
#Puts some content in them using echo and redirection.
#Displays their content using cat.
#Says goodbye to the user and cleans up after itself.


echo "Enter the name of the directory: "

read dir

mkdir "$dir"

sleep 1

echo "Directory Created"

cd "$dir"

sleep 1

echo "Changed to directory $dir"

sleep 1

pwd "$dir"

sleep 1

echo "Printing Current Working Directory"

touch ${dir}1.txt ${dir}2.txt ${dir}3.txt ${dir}4.txt

sleep 2

echo "created 4 text files"

ls -l ${dir}*.txt

sleep 1

echo "long listed all four files"

sleep 1

echo "Just some sample text" >> ${dir}1.txt

sleep 1

echo "Redirected echo output to file"

sleep 1

cat ${dir}1.txt

sleep 1

echo "displayed content of file"

sleep 1

echo "goodbye"

sleep 1

rm ${dir}*.txt

sleep 1

echo "deleted all four files"

sleep 1

cd ..

sleep 1

echo "switched to previous directory"

sleep 1

rmdir "$dir"

sleep 1

echo "removed the directory that we created at the beginning"

sleep 1

echo "clean up done"

sleep 1

ls -l
