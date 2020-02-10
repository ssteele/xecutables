#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

bash_exports=''
bash_aliases=''

if [[ ! -z $bash_exports ]] || [[ ! -z $bash_aliases ]]; then
    source ${xec}/_bootstrap.bash
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
