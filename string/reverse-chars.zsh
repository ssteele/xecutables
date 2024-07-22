#!/bin/zsh


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     REVERSE CHARACTERS IN PHRASE
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ -z "$1" ]]; then

    echo ''
    echo 'USAGE::'
    echo ''
    echo '    reverseChars "$phrase"'
    echo ''
    exit

else
    phrase="$1"
fi

echo "${phrase}" | rev
echo "${phrase}" | rev | pbcopy
