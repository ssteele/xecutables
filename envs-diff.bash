#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

bash_exports=''
bash_aliases='envsCopy'

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
#     COPY SHELL ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

envFile=''
if [[ -z "$1" ]]; then
    envFile='_env.bash'
else
    envFile="$1"
fi

envsCopy > .tmp
diff ${envFile} .tmp
rm -fr .tmp
