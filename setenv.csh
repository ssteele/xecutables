#!/bin/csh

if ($#argv != 1) then
    echo "Which project? "
    set env = "$<"
else
    set env = $argv[1]
endif

set caps = `echo $env | tr "[a-z]" "[A-Z]"`

cd ${ll}/assets_${env}

alias ga "cd `pwd`"
setenv ga "`pwd`"

cd ${ll}/${caps}

alias gr "cd `pwd`"
setenv gr "`pwd`"

cd ${gr}/site/*content*/plugins

alias gp "cd `pwd`"
setenv gp "`pwd`"

cd ${gr}/site/*content*/themes/

alias gt "cd `pwd`"
setenv gt "`pwd`"

cd ${gt}/${env}

alias gh "cd `pwd`"
setenv gh "`pwd`"

exit
