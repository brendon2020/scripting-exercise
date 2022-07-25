#!/bin/bash

# PROGRAM: Write a shell command to ignore all lines starting with #.

awk '!/^#/' $1

# DOCUMENTATION
# usage -> ./hash.sh <file>