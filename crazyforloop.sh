#!/bin/bash
#i was wondering what if i want to print each directory path in the PATH variable line by line
#i used the cut -d: -f but what value will i enter for f  ?
#so i did echo $PATH and counted 10 directory paths
#that's when i wanted to write a for loop.
for var in {1..10}
do
echo $PATH | cut -d: -f$var
done