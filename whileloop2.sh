#!/bin/bash

while [ -e /home/as/textfile.txt ]
do
echo "textfile.txt exists(loop will keep going on)"
done
echo "either there's no file or textfile.txt was deleted (loop ends)"
