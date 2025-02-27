#!/bin/bash

debbase ()
{
echo "Beginning update and upgrade process"
sudo apt update  1>>/home/as/deb/update/success.log 2>>/home/as/deb/update/failure.log
sudo apt dist-upgrade -y 1>>/home/as/deb/upgrade/success.log 2>>/home/as/deb/upgrade/failure.log
}

rhelbase ()
{
echo "Beginning update and upgrade process"
sudo dnf update  1>>/home/as/rhel/update/success.log 2>>/home/as/rhel/update/failure.log
sudo dnf distro-sync -y 1>>/home/as/rhel/upgrade/success.log 2>>/home/as/rhel/upgrade/failure.log
}

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
	echo "This distro anything other than Debian, Ubuntu, Rocky or RHEL"
fi
