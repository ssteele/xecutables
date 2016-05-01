#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports
bash_exports_valid=$?

# validate all aliases
verify_bash_aliases
bash_aliases_valid=$?

if [[ 0 = ${bash_exports_valid} || 0 = ${bash_aliases_valid} ]]; then
    exit
fi

shopt -s expand_aliases
source ~/.bashrc


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     OPEN ht SCRIPT IN A BROWSER
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

file="$1"
${xec}/phpurl.pl `pwd -P` ${file}

