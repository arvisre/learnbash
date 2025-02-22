#!/bin/bash
echo -n "Enter the command you want to find:"
read cmd
if [ -e /usr/bin/$cmd ]; then
	echo "Yes, it's there"
else
	sudo apt update && sudo apt install -y $cmd
fi

$cmd
