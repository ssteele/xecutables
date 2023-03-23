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
    ls ${gPP}/*
    echo ''
    exit
fi

parentDirectory="${gPP}/"
patchDirectory=""
patchName="${1}"
if [[ -n "${2}" ]]; then
    patchDirectory="${1}/"
    patchName="${2}"
fi

IFS=$'\n'
for patch in $( ls ${parentDirectory}${patchDirectory} ); do
    if [[ ${patch} =~ "${patchName}" ]]; then
        patchToApply="${patch}"
        break
    fi
done

if [ -n "${patchToApply}" ]; then
    git apply < ${parentDirectory}${patchDirectory}${patchToApply}
    echo -n 'Patch applied: '; echo \$gPP/${patchDirectory}${patchToApply}
    git status
else
    echo 'Patch not found'
fi
