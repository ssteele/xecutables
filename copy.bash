#!/bin/bash

cmd=''

if [[ -z "$1" ]]; then
	cmd='pwd'
else
	for arg in "$@"; do
		cmd="$cmd $arg"
	done
fi

$cmd | pbcopy

exit
