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
#     FUN TIME COMPUTER VOICE
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ -z "$1" ]]; then

    echo ''
    echo 'USAGE::'
    echo ''
    echo '    vox "$msg" $voice [agnes, kathy, princess, vicki, victoria, bruce, fred, junior, ralph, albert, bahh, bells, boing, bubbles, cellos, deranged, hysterical, trinoids, whisper, zarvox]'
    echo ''
    exit

else
    msg="$1"
fi

if [[ -n "$2" ]]; then
    voice="$2"
fi

say -v "${voice}" "${msg}"

