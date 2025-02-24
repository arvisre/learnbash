#!/bin/bash

#grep "ID=ubuntu" /etc/os-release > /dev/null

#if [ $? -eq 0 ]
#then
#sudo apt update; sudo apt upgrade -y
#fi

grep ID="rocky" /etc/os-release > /dev/null

if [ $? -eq 0 ]
then
sudo dnf update #sudo dnf upgrade -y
else
echo "This system does not run Rocky Linux"
fi
#I couldn't get this to run on Rocky"
