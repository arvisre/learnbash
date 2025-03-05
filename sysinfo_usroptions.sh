#!/bin/bash

echo "Welcome $(whoami) ! It's $(date +%A) $(date +%d.%b.%Y--%H:%M:%S)"
#using the whoami command we find the username
#date command + %options %A for day of week %d date %b abbr for month %Y YYYY %H Hour %M Minutes %S Seconds

echo "This computer ""$(hostname)"" has been up for $(uptime | cut -d, -f1 | cut -d' ' -f4,5)"
#using hostname command we print the hostname
#uptime is a bit tricky so i had to use cut command twice to grab the actual uptime of the computer

echo "The host's Network Information is $(ip address show | grep -w "inet" | grep -v "127.0.0.*/*")"
#like uptime, this one is also tricky. the first grep searches for the exact term inet. the second grep prints everying other than the loopback address

echo "What would you like to do further ?"

echo " Press (1) to Update Computer (2) to Carry on with work or (3) Power Off"

read usropt
#read user's input

#case statement to perform appropriate action based on user's input the appropriate action.
case $usropt in

1)
sudo dnf update >>/home/as/update/log 2>&1
#both the stdout and stderr streams are sent to the same log

sudo dnf distro-sync >>/home/as/distro-sync/log 2>&1

;;

2) echo "Okay, Carry on !!" ;;

3) echo "Shutting down Computer"
sudo poweroff;;
#poweroff will shutdown the computer without giving any time to the user

*) echo "Enter the appropriate option";;
#default case
esac
