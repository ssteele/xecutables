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
#     SET LARAVEL ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
cd ${env}
setR

# set routes
cd ${gR}/routes
setO
seto

# set db alters
cd ${gR}/database/migrations
setD

# set public
cd ${gR}/public
setP

# set tests
cd ${gR}/tests
setT

# set laravel source
cd ${gR}/vendor/laravel/framework/src/Illuminate
setS

# set assets
if [ -d "${home}/assets/${env}" ]; then
    cd ${home}/assets/${env}
    year=`date "+%Y"`

    if [ -d $year ]; then
        cd ${year}
    fi

    setAA
fi

# set models
cd ${gR}/app
setm

# set controllers
cd ${gm}/Http/Controllers
setc

# set views
cd ${gR}/resources/views
setv

gR
