#!/bin/bash

#first lets check if the user has passed 4 positions args with the script
if
	[ $# -ne 4 ]
then
	echo "You must pass Source and Destination paths, Destination System username,and IP address along with the script"
	#inform the user and force exit
	exit 1
fi

#since we are going to use rsync for transfer, ssh is required.
#check if ssh is installed and running
which ssh >/dev/null  2>&1

if
	[ $? -ne 0 ]
then
	sudo apt update &>>/home/as/updatelogs.log
	sudo apt install openssh-client -y &>>/home/as/installlogs.log
	echo "Open SSH Client Installed"
else
	sudo systemctl enable ssh >/dev/null 2>&1
fi

echo "Backing up the scripts Directory"
temp="/home/as/totransfer"
tar -czf $temp/scripts.tar.gz $1

echo "Copying Backup File to Destination Directory"
rsync -a $temp/scripts.tar.gz $3@$4:$2

echo "Check Destination Directory"
