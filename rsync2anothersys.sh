#!/bin/bash

[ -d /usr/sbin/ssh* ]
#check if ssh service is installed

if [ $? -ne 0 ]
#if not installed

then
sudo apt install ssh
#i must have used the -y option with the above command. it would have one less human intervention.

fi
#install ssh

systemctl start ssh
#start ssh service

rsync /home/as/myscripts/universalupdatescript.sh as@192.168.2.20:/home/as/

#transfer file to remote system using rsync
#The script asked me for a password to start the ssh service in the source system. 
#Then a prompt to fingerprint. 
#Then the password for the destination system. 
#how can I make a case for less human intervention ?
