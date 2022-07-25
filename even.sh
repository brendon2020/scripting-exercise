#!/bin/bash

# PROGRAM: Write a shell script to find all files with even numbers (e.g. 2.txt, 4.txt, etc.).

for f in '*[02468].*'
do
    echo $f
done

# DOCUMENTATION
# usage -> ./even.sh