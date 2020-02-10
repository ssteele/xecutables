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

