#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

bash_exports='ss'
bash_aliases=''

if [[ ! -z $bash_exports ]] || [[ ! -z $bash_aliases ]]; then
    source ${xec}/_bootstrap.bash
fi


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     CUSTOM WHICH COMMAND
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ -n "$1" ]]; then
    input="$1"
else
    echo -n "Command: "
    read input
fi

echo ''

grep ${input} ~/.zshrc
grep -r ${input} ${ss}/zsh
echo ''

alias ${input}
echo ''
