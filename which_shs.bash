#!/bin/bash

if [[ -n "$1" ]]; then
    input="$1"
else
    echo -n "Command: "
    read input
fi

grep $input ~/.bashrc