#!/bin/bash

echo -n "What is your Distro? Ubuntu, Debian, Rocky or RHEL?"

read osrel
#read user input and assign to variable osrel

case $osrel in
	#use the same variable that was used for user input.

	debian | Debian | ubuntu | Ubuntu) sudo apt update; sudo apt dist-upgrade -y ;;
	#case1 debian or ubuntu. semicolon is mandatory

	rocky | Rocky | rhel | RHEL) sudo dnf update; sudo dnf distro-sync -y ;;
	#case2 rocky or rhel. semicolon is mandatory

	*) echo "Not available at this moment" ;;
	#default case. semicolon is mandatory.

esac
#close the case statement with esac
