#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports appsite_path phoenix_assets_path work
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
#     SET FG APPSITE ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# custom site
env=${appsite_path}

# set root
cd ${env}
setr

# set routes
cd ${gr}/app
seto

# set models
cd ${go}/models
setm

# set views
cd ${go}/views
setv

# set controllers
cd ${go}/controllers
setc

# set db alters
cd ${go}/database/migrations
setd

# set public
cd ${gr}/public
setp

# set compiled js
cd ${gp}/packages/js
setj
setjj

# set style
cd ${gp}/packages/css
sets
setss

# set tests
cd ${go}/tests
sett

# set laravel source
cd ${gr}/vendor/laravel/framework/src/Illuminate
setl

# set assets
cd ${phoenix_assets_path}/2016
setA

# set documentation
cd ${work}/documentation/appsite
setD

# set docker
cd ~/dev_docker
setV

gr
