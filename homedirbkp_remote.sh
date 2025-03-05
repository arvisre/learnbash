#!/bin/bash

usr=$(whoami)
#get username using whoami command

src=/home/$usr/
#assign /home/username to variable

curbkp=${usr}_homebkp_$(date +%A-%Y-%m-%d--%H%M%S)
#_homebkp_ follows the variable $usr. however those are not part of the variable name
#hence we have to use the ${usr} parameter expansion to ensure the shell differentiates
#between the variable and other characters that follow it.

oldbkp=${usr}_oldbkp_$(date +%A-%Y-%m-%d--%H%M%S)
#since we want to avoid files being overwritten or deleted we are defining an old backup

sudo rsync -a --backup --backup-dir=/tmp/$oldbkp --delete $src $usr@192.168.2.20:/tmp/$curbkp
#--backup with ensure files are not overwritten --backup-dir will move overwritten or deleted
#files to another directory --delete will ensure that source and dest have the exact copies

#i don't think the --backup and --backup-dir portion is working

