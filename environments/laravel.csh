#!/bin/tcsh

if ($#argv != 1) then

    echo "Which project? "
    set env = "$<"

else
    set env = $argv[1]
endif

# remove all slashes
set env = `echo $env | sed "s/[/]//g"`

# extract the project name
set proj = `echo $env | sed "s/_.*//"`

# set root
cd ${env}
setr

# set routes
cd ${gr}/app/Http/
sett

# set controllers
cd ${gt}/Controllers/
setc

# set views
cd ${gr}/resources/views/
setv

# set style
cd ${gr}/public/css/
sets

gv

exit
