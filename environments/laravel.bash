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
seth

# set models
cd ${gr}/app/
setm

# set views
cd ${gr}/resources/views/
setv

# set controllers
cd ${gh}/Controllers/
setc

# set style
cd ${gr}/public/css/
sets

gr
