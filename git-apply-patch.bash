#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

bash_exports='gPP'
bash_aliases=''

if [[ ! -z $bash_exports ]] || [[ ! -z $bash_aliases ]]; then
    source ${xec}/_bootstrap.bash
fi


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     GIT BRANCH COPY
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ -z "$1" ]]; then
    echo ''
    echo 'Please supply a search term to match an available patch below:'
    echo ''
    ls $gPP
    echo ''
    exit
fi

stashName="$1"
IFS=$'\n'
for patch in $( ls $gPP ); do
    if [[ $patch =~ "$stashName" ]]; then
        patchToApply="$patch"
        break
    fi
done

if [ -n "${patchToApply}" ]; then
    git apply < ${gPP}/${patchToApply}
    echo -n 'Patch applied: '; echo \$gPP/${patchToApply}
    git status
else
    echo 'Patch not found'
fi
