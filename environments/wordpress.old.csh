#!/bin/tcsh

if ($#argv != 1) then
    echo "Which project? "
    set env = "$<"
else
    set env = $argv[1]
endif

set caps = `echo $env | tr "[a-z]" "[A-Z]"`

cd ${ll}/assets_${env}
seta

cd ${ll}/${caps}
if (! -d "app") then
    setr
else
    cd app
    setv
    cd ../site
    setr
endif

cd ${gr}/site

if (-d "wp-content" || -d "content") then
    cd ${gr}/site/*content*/plugins
    setp
    cd ${gr}/site/*content*/themes/
    sett
else if (-d "assets") then
    cd ${gr}/site/*assets*/plugins
    setp
    cd ${gr}/site/*assets*/themes/
    sett
else
    echo 'Could not locate content directory'; exit
endif

cd ${gt}/${env}
seth

exit
