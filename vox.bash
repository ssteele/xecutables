#!/bin/bash


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

