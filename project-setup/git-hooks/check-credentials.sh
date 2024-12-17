#!/bin/sh

username=$(git config --local user.name)
useremail=$(git config --local user.email)

if [ -z "$username" ] || [ -z "$useremail" ]; then
	echo "Please set user.name and user.email locally to ensure you are committing with the correct credentials. In the repo, use these commands te set the local config:"
	echo "git config user.name YourNameHere"
	echo "git config user.email your@email.here"
	exit 1
fi
