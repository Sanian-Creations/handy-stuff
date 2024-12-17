#!/bin/sh

# get a list of changed, staged files
files=$(git diff --staged --name-only)

# check for the string "nocheckin"
found=$(grep --ignore-case --line-number --with-filename "nocheckin" $files)

# -n = string length is non-zero
if [ -n "$found" ] 
then
	# print the found occurences, which should contain the file and line num
	echo "$found" 
	
	# exit non-zero so git knows this hook had an error and stops what it was doing.
	exit 1
fi
