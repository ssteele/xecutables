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

stashName='current-dev-base'
if [[ -n "$1" ]]; then
    stashName="$1"
fi

IFS=$'\n'
for stash in $( git stash list ); do
    if [[ $stash =~ "$stashName" ]]; then
        stashIndex=`echo $stash | sed 's/^stash@{\([^}]\)}.*$/\1/'`
        if [ -n "${stashIndex}" ]; then
            break
        fi
    fi
done

if [ -n "${stashIndex}" ]; then
    git stash apply stash@{${stashIndex}}
else
    echo 'Stash not found'
fi
