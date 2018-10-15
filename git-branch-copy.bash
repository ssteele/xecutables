#!/bin/bash

if [[ -n "$1" ]]; then
    id="$1"
else
    echo -n "ID: "
    read id
fi

currentBranch="`git branch | grep \* | cut -d ' ' -f2`"
newBranch="!${currentBranch}-${id}"

git branch -D ${newBranch}
git branch ${newBranch}
