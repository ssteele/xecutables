#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

bash_exports=''
bash_aliases=''

if [[ ! -z $bash_exports ]] || [[ ! -z $bash_aliases ]]; then
    source ${xec}/verify-bash-variables.bash

    # validate all variables
    verify_bash_exports $bash_exports
    bash_exports_valid=$?

    # validate all aliases
    verify_bash_aliases $bash_aliases
    bash_aliases_valid=$?

    if [[ 0 = ${bash_exports_valid} || 0 = ${bash_aliases_valid} ]]; then
        exit
    fi

    shopt -s expand_aliases
    source ~/.bashrc
fi


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     COPY PRESENT WORKING DIRECTORY
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

cmd=''

if [[ -z "$1" ]]; then
    cmd='pwd'
else
    for arg in "$@"; do
        cmd="${cmd} ${arg}"
    done
fi

${cmd} | pbcopy

exit
