#!/bin/csh

if ($#argv == 0) then

    echo ''
    echo 'USAGE::'
    echo ''
    echo '    vox "$msg" $voice [agnes, kathy, princess, vicki, victoria, bruce, fred, junior, ralph, albert, bahh, bells, boing, bubbles, cellos, deranged, hysterical, trinoids, whisper, zarvox]'
    echo ''
    exit

else
    set msg = "$argv[1]"
endif

set voice = ''
if ($#argv == 2) then
    set voice = $argv[2]
endif

say -v "$voice" "$msg"

exit