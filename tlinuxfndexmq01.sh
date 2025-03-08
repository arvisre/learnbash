#!/bin/bash

#created 4 text files abc.txt efg.txt pqr.txt and xyz.txt

#using touch -t command changed the modified date for each file
#example touch -t 202403081300 abc.txt
#this will change the modified date of abc.txt to 8th march 2024 at 1pm.


find . -maxdepth 1 -type f -name '*.txt' | while read file

#the find command will search the current directory. with maxdepth 1 it will not check sub-directories.
#-type f will check only for files. it won't check directories.
#-name *.txt will check for files that have txt extention
#it will find those files and pipe that output to the while loop
#the read command will read every file that is output by the find command

do

mdate=$(date -r $file +%Y%m%d)
#for every file - first get the modified date using the date -r <filename> and change that date format
#to Ymd. so not you have something like YYYYMMDD. This modified date is saved in mdate.

mkdir $mdate
#for every file make a directory with name as the file's modified date

mv $file $mdate
#move each file to its corresponding directory

done


