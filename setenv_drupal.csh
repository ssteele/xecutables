#!/bin/csh

echo "Which project? ";
set env = "$<"
set caps = `echo $env | tr "[a-z]" "[A-Z]"`

cd ${ll}/assets_${env}

alias ga "cd `pwd`"
setenv ga "`pwd`"

cd ${ll}/${caps}

alias gr "cd `pwd`"
setenv gr "`pwd`"

cd ${gr}/sites/all/modules/

alias gp "cd `pwd`"
setenv gp "`pwd`"

cd ${gr}/sites/all/themes/

alias gt "cd `pwd`"
setenv gt "`pwd`"

cd ${gt}/${env}

alias gh "cd `pwd`"
setenv gh "`pwd`"

exit