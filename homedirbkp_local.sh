#!/bin/bash

usr=$(whoami)

src=/home/$usr

dst=/tmp/${usr}_homebkp_$(date +%A-%Y-%m-%d--%H:%M:%S).tar.gz

sudo tar -czf $dst $src >/dev/null 2>&1;

echo "${usr}'s home folder has been backed up"

