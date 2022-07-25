#!/bin/bash

# PROGRAM: Write a shell script to find non-system users and their group and shell status, from the passwd file. Use function calls to extract the details

awk -F: '($3>=1000)&&($1!="nobody"){print "The User "$1" belongs to the GroupID "$4" and has shell access "$7}' /etc/passwd

# DOCUMENTATION
# usage -> ./user.sh