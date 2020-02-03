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
#     GIT BRANCH COPY
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ -n "$1" ]]; then
    uniqueName="$1"
else
    echo -n "Unique name: "
    read uniqueName
fi

currentBranch="`git branch | grep \* | cut -d ' ' -f2`"
newBranch="!${currentBranch}-${uniqueName}"

if [[ $(git rev-parse --verify --quiet "${newBranch}") ]]; then
    git branch -D ${newBranch}
fi

git branch ${newBranch}
echo "Created branch ${newBranch}"
