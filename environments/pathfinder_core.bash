#!/bin/bash

# called by implementation?
# if [[ "$@" > 0 ]]; then
if [ "$#" > 0 ]; then

    if [ 'implementation' = "$1" ]; then
        core='false'
    fi

else
    core=true
fi

# hardcode core project
env='sbp_dashboard_core/'

# remove all slashes
env=`echo $env | sed 's/[/]//g'`

# extract the project name
proj=`echo $env | sed 's/_.*//'`

# set root
cd ${code}/${env}
if $core; then
    setr
fi
setrr

# set "content"
cd ${grr}/dashboard-server/dashboard-server-resources/src/main/
if $core; then
    setm
fi
setmm

# set view
cd ${gmm}/webapp/WEB-INF/jsp/views
if $core; then
    setv
fi
setvv

# set tags
cd ${gmm}/webapp/WEB-INF/tags
if $core; then
    sett
fi
settt

# set style
cd ${gmm}/webapp//static/css
if $core; then
    sets
fi
setss

# set assets
if [ -d "/Users/steele/projects/assets/${env}" ]; then

    cd /Users/steele/projects/assets/${env}
    year=`date "+%Y"`

    if [ -d $year ]; then
        cd $year
    fi

    if $core; then
        seta
    fi
    setaa

fi

gv
