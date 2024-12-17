#!/bin/sh

username=$(git config --local user.name)
useremail=$(git config --local user.email)

if [ -z "$username" ]; then
    echo "Please set user.name locally to ensure you are committing with the correct credentials. Within the repo, run `git config set user.name YourNameHere`"
	exit 1
fi
if [ -z "$useremail" ]; then
    echo "Please set user.email locally to ensure you are committing with the correct credentials. Within the repo, run `git config set user.email your@email.here`"
	exit 1
fi