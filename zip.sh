#!/bin/bash

# PROGRAM: Write a shell script to find recently modified 3 files from a folder and zip it.

# grab file names three most recent files
files=$(ls -lth $1 | awk '{print $9}' | sed -n '2,4p')
# zip those threee files
zip recent3.zip $files
# print output to confirm to user these files have been zipped 
echo "Your 3 most recent files: \n$files\nhave been zipped into recent3.zip"

# DOCUMENTATION
# usage -> ./zip.sh <directory>
