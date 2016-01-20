#!/bin/bash

if [[ -n "$1" ]]; then
    input="$1"
else
    echo -n "Command: "
    read input
fi

echo ''
grep $input ~/.bashrc
grep -r $input ~/bash/
echo ''
source ~/.bashrc
alias $input
echo ''
