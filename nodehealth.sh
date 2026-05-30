#!/bin/bash
#
##########################
#Author: Sandeep.Mane
#Dtae: 01/3/2026
#Title: This script return system components
#Version: v1
echo -e " \n disk usage"
df -h


echo -e  "\n memory usage"
free

echo -e "\n cpu"
nproc

echo -e "\n currently running processes"
top
