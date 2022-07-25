#!/bin/bash

# PROGRAM: Write a shell script to find all files with odd numbers (e.g. 1.txt, 3.txt, etc.).

for f in '*[13579].*'
do
    echo $f
done

# DOCUMENTATION
# usage -> ./odd.sh