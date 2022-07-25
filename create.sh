#!/bin/bash

# PROGRAM: Write a shell script using a for loop to create files.
# The file names should be 1.txt, 2.txt, 3.txt ... 1000.txt

for i in {1..20}
do
    touch $i.txt
done

# DOCUMENTATION: 
# usage -> ./create.sh