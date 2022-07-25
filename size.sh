#!/bin/bash

# PROGRAM: Write a shell script to find files larger than 100MB

find $1 -type f -size +100MB

# DOCUMENTATION
# usage -> ./size.sh <directory>

