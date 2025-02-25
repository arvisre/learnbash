#!/bin/bash

for file in 1 2 3 4 5
do
	touch script$file.sh
	sudo chmod 764 script$file.sh
done
echo "5 script files were created and execute permissions applied"
