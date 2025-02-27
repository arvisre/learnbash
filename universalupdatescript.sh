#!/bin/bash

chkosrel=/etc/os-release

#lets check for debian based distros
if
	grep -i -q "ubuntu" $chkosrel || grep -iq "debian" $chkosrel
	#grep -i for ignoring case
 	#grep -q means quiet mode; no output on screen
	then
	sudo apt update; sudo apt dist-upgrade -y
fi


#lets check for rhel compatible distros

if 
	grep -i -q "rocky" $chkosrel || grep -iq "rhel" $chkosrel
	then
	sudo dnf update; sudo dnf distro-sync -y
fi
