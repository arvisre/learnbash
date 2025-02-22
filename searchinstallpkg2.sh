#!/bin/bash
echo -n "enter a command you wish to search for: "
read cmd
which $cmd
if [ $? -eq 0 ]; then
	echo "package installed"
else
	echo "do you want to install the package"
	read option
	if [ $option == y ] || [ $option == Y ]; then
		sudo apt update && sudo apt install -y $cmd
		echo "the package has been installed"
	else
		echo "package not installed"
	fi
fi
