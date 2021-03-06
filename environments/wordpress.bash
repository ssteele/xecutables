#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports home
bash_exports_valid=$?

# validate all aliases
verify_bash_aliases
bash_aliases_valid=$?

if [[ 0 = ${bash_exports_valid} || 0 = ${bash_aliases_valid} ]]; then
    return
fi

shopt -s expand_aliases
source ~/.bashrc


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     SET WORDPRESS ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
env=`echo ${env} | sed 's/[/]//g'`

# extract the project name
proj=`echo ${env} | sed 's/_.*//'`

# set root
cd ${home}/${root}/${env}
setR

# set assets
if [ -d "${home}/assets/${env}" ]; then
    cd ${home}/assets/${env}
    year=`date "+%Y"`

    if [ -d $year ]; then
        cd ${year}
    fi

    setAA
fi

cd ${gR}/site

# set plugins
if [[ -d 'wp-content' || -d 'content' ]]; then
    cd ${gR}/site/*content*/plugins
    setp
elif [ -d 'assets' ]; then
    cd ${gR}/site/*assets*/plugins
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
if [ -d ${env} ]; then
    found_home=true
    cd ${env}
    seth
elif [ -d ${proj} ]; then
    found_home=true
    cd ${proj}
    seth
else
    echo 'Could not locate content directory'
fi

# set style
if ${found_home}; then
    cd _
    if [ -d 'scss' ]; then
        cd scss
        setx
    elif [ -d 'sass' ]; then
        cd sass
        setx
    fi
fi

if ${found_home}; then
    gh
else
    gt
fi
