#!/bin/bash

if [[ -z "$1" ]]; then

    echo 'Which project? '
    read env

else
    env="$1"
fi

# remove all slashes
env=`echo $env | sed 's/[/]//g'`

# extract the project name
proj=`echo $env | sed 's/_.*//'`

# set root
cd ${env}
setr

# set routes
cd ${gr}/app/Http/
sett

# set controllers
cd ${gt}/Controllers/
sets

# set views
cd ${gr}/resources/views/
setv

# set style
cd ${gr}/public/css/
sets

gv
