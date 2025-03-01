#!/bin/bash

#first we are going to  make a tarball
#second we are going to compress it
#third we are going to rsync the archive from Ubuntu machine to the Rocky machine

#first lets check if ssh is installed

which ssh

if
	[ $? -ne 0 ]
then
	echo "SSH is not installed; Installing SSH"
	sudo apt update 1>> /home/as/myscripts/updatesuccess.log 2>>/home/as/myscripts/updatefailure.log
	sudo apt install openssh-client -y
else
	echo "SSH already installed"
fi

echo -n "Enter the Source File / Directory:"
read src

echo -n "Enter the Destination Directory:"
read dst

echo -n "What is the username in the destination computer:"
read user

echo -n "What is the IP Address of the destination computer:"
read ipaddr

echo "Beginning to create a tarball of the source"

tar -cf /home/as/totransfer/bkpfile.tar $src

echo "Compressing the tarball"

gzip /home/as/totransfer/bkpfile.tar

echo "Transferring file to destination"

rsync /home/as/totransfer/bkpfile.tar.gz $user@$ipaddr:$dest

echo "Check destination machine
