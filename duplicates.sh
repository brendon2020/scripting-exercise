#!/bin/bash 

# PROGRAM: Consider a scenario where you have a script which writes some output to a file. 
# But you accidentally ran that script twice, so your output file contains duplicate entries. 
# Write a script to extract duplicate entries from the file.

awk '!a[$0]++' $1

# DOCUMENTATION
# sort $1 | uniq -> works but will change order
# uses associative arrays (hash table/dictionary); pattern count incremented and negated
# pattern with count 0 negated is true so is displayed by awk
# pattern with count 1+ negated is false so is left out