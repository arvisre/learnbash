#!/bin/bash

[ -d /usr/sbin/ssh* ]
#check if ssh service is installed

if [ $? -ne 0 ]
#if not installed

then
sudo apt install ssh
fi
#install ssh

systemctl start ssh
#start ssh service

rsync /home/as/myscripts/universalupdatescript.sh as@192.168.2.20:/home/as/

#transfer file to remote system using rsync
