#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

bash_exports=''
bash_aliases='search'

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
#     JOIN SEARCH RESULTS LIST (ONE-PER-LINE) ONTO A SINGLE LINE
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ -n "$1" ]]; then
    searchTerm="$1"
else
    echo ''
    echo "Please feed me lines of input"
    echo ''
    exit
fi

output=`search --nocolor ${searchTerm} | tr '\n' ' '`

echo ${output}
echo ${output} | pbcopy
