#!/bin/bash

# environment
root='sites'
# root='public'

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
cd ${lll}/$root/${env}
setr

cd ${gr}/site

# set plugins
if [[ -d 'wp-content' || -d 'content' ]]; then

    cd ${gr}/site/*content*/plugins
    setp

elif [ -d 'assets' ]; then

    cd ${gr}/site/*assets*/plugins
    setp

fi

cd ../themes
sett

# set parent theme
if [ -d 'skeleton' ]; then

    cd skeleton
    sethh
    cd ..

elif [ -d '*skeleton*' ]; then

    cd *skeleton*
    sethh
    cd ..

fi

found_home=false

# set home
if [ -d $env ]; then

    found_home=true
    cd $env
    seth

elif [ -d $proj ]; then

    found_home=true
    cd $proj
    seth

else
    echo 'Could not locate content directory'
fi

# set style
if $found_home; then

    cd _

    if [ -d 'scss' ]; then

        cd scss
        sets

    elif [ -d 'sass' ]; then

        cd sass
        sets

    fi

fi

# set assets
if [ -d "${lll}/assets/${env}" ]; then

    cd ${lll}/assets/${env}
    year=`date "+%Y"`

    if [ -d $year ]; then
        cd $year
    fi

    seta

fi

if $found_home; then
    gh
else
    gt
fi
