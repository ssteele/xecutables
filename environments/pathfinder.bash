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
cd ${code}/${env}
setr

# set "content"
cd ${gr}/dashboard/dashboard-server/src/main/
setm

# set view
cd ${gm}/webapp/WEB-INF/jsp/views
setv

# set tags
cd ${gm}/webapp/WEB-INF/tags
sett

# set style
cd ${gm}/webapp//static/css
sets

# set assets
if [ -d "/Users/steele/projects/assets/${env}" ]; then

    cd /Users/steele/projects/assets/${env}
    year=`date "+%Y"`

    if [ -d $year ]; then
        cd $year
    fi

    seta

fi

# set core
sete_pathfinder_core implementation
