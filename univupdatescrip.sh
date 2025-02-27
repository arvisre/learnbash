#!/bin/bash

grep "ID=ubuntu" /etc/os-release > /dev/null

if [ $? -eq 0 ]
then
sudo apt update; sudo apt upgrade -y
fi

grep "ID=rocky" /etc/os-release > /dev/null

if [ $? -eq 0 ]
then
sudo dnf update; sudo dnf upgrade -y

fi
#Jay Lacroix also had a similar approach: checking /etc/os-release. Then he does a grep, but his approach uses a -q option for grep.
#I'm glad I had a similar thoughtprocess, although not so successful approach.
