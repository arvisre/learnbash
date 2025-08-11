#!/bin/bash

#currtime=$(uptime | awk '{print $1}')
#usrs=$(w | awk 'NR==1{print $4}')
#oneloadavg=$(w | awk 'NR==1{print $8}')
#fiveloadavg=$(w | awk 'NR==1{print $9}')
#fifteenloadavg=$(w | awk 'NR==1{print $8}')

echo "Hostname: "$(hostname)""

echo "This Systems's IP Address is: $(hostname -I)"

echo "Current Time: "$(date +%Y-%m-%d)" at "$(uptime | awk '{print $1}')" "

echo "This System has: "$(lscpu | awk 'NR==5 {print $2}')" CPU(s)"

echo "Currently there are "$(w | awk 'NR==1{print $4}')" users logged in to this system"

echo "The load averages are 5 minutes: "$(w | awk 'NR==1{print $8}')" 10 minutes: "$(w | awk 'NR==1{print $8}')" and 15 minutes: "$(w | awk 'NR==1{print $8}')""

echo "Memory Usage: "$(free --mega | awk 'NR==2{print "Memory Free(in MB):", $4}')" "

echo "Root Filesystem usage is at: "$(df -hT /dev/nvme0n1p2 | awk 'NR==2{print "Root Filesystem usage is at:", $6}')" "
