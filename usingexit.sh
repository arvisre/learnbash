#!/bin/bash
echo -n "enter a command you wish to search for: "
read cmd
which $cmd 1>/dev/null
if [ $? -eq 0 ]; then
	echo "package installed"
	exit
else
	echo "do you want to install the package Y/n"
	read option
if	[ $option == Y ]; then
		sudo apt update && sudo apt install -y $cmd
		echo "the package has been installed"
else
	exit
fi

fi
