#!/bin/bash

clock="$(date +%A) $(date +%d.%b.%Y--%H:%M:%S)"

sysinfo()
{
echo "The Computer Name is: $(hostname)"
echo "You have logged in as: $(whoami)"
echo "Network Information: $(ip address show | grep -w "inet" | grep -v "127.0.0.*/*")"
echo "The System has been up for (HH:MM): $(uptime | cut -d, -f1 | cut -d' ' -f4,5)"
echo "The Operating System is: $(uname -s)"
echo "The Computer Architecture is: $(arch)"
echo "The distribution is: $(cat /etc/os-release | grep -w "NAME")"
}

debbase ()
{
echo "$clock: Beginning update and upgrade process"
sudo apt update >/dev/null 2>&1
sleep 1
sudo apt dist-upgrade >/dev/null 2>&1
echo "$clock: Completing update and upgrade process"
#sudo apt update  1>>/home/as/deb/update/success.log 2>>/home/as/deb/update/failure.log
#sudo apt dist-upgrade -y 1>>/home/as/deb/upgrade/success.log 2>>/home/as/deb/upgrade/failure.log
}

rhelbase ()
{
echo "$clock: Beginning update and upgrade process"
sudo dnf update >/dev/null 2>&1
sleep 1
sudo dnf distro-sync >/dev/null 2>&1
echo "$clock: Completing update and upgrade process"
#sudo dnf update  1>>/home/as/rhel/update/success.log 2>>/home/as/rhel/update/failure.log
#sudo dnf distro-sync -y 1>>/home/as/rhel/upgrade/success.log 2>>/home/as/rhel/upgrade/failure.log
}

echo "Hello $(whoami) !! Press 1 for System Information; 2 for Applying Update"
read usropt

case $usropt in

1) sysinfo ;;

2)

osrel=/etc/os-release

if
	grep -i -q "Debian" $osrel || grep -i -q "Ubuntu" $osrel
then
	debbase

elif
	grep -i -q "Rocky" $osrel || grep -i -q "RHEL" $osrel
then
	rhelbase
else

	echo "This distro is anything other than Debian, Ubuntu, Rocky or RHEL"
fi

;;

*) echo "That's not the right option"

;;

esac
#i don't think the $clock variable is working properly. need to check that.
