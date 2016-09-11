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
setr

# set routes
cd ${gr}/app/Http
seto

# set models
cd ${gr}/app
setm

# set views
cd ${gr}/resources/views
setv

# set controllers
cd ${gh}/Controllers
setc

# set db alters
cd ${gr}/database/migrations
setd

# set js
cd ${gr}/resources/assets/js
setj

# set style
cd ${gr}/resources/assets/sass
sets

# set public
cd ${gr}/public
setp

# set compiled js
cd ${gp}/js
setjj

# set compiled style
cd ${gp}/css
setss

# set laravel source
cd ${gr}/vendor/laravel/framework/src/Illuminate
setl
seti

# set assets
cd ${home}/assets/${env}
seta

gr
