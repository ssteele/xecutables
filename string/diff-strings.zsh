#!/bin/zsh


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     COMPARE TWO RAW STRINGS
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ "$#" -eq 2 ]]; then
    string1="$1"
    string2="$2"
else
    echo ''
    echo 'USAGE::'
    echo ''
    echo '    diffStrings string1 string2'
    echo ''
    exit
fi

diff <(printf '%s\n' "${string1}") <(printf '%s\n' "${string2}")
