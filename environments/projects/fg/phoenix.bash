#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports phoenix_path phoenix_assets_path work dt
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
#     SET FG PHOENIX ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# custom site
env=${phoenix_path}

# set root
cd ${env}
setr

# set FG
cd ${gr}/application/libraries/Fg
setf

# set routes
cd ${gr}/application/config
setrr

# set controllers
cd ${gr}/application/controllers
setc

# set entities
cd ${gf}/Entity
sete

# set models
cd ${gf}/Model
setm

# set viewmodels
cd ${gf}/ViewModel
setvv

# set views
cd ${gr}/application/views
setv

# set services
cd ${gf}/Service
sets

# # set attributes
# cd ${gf}/Ade/Attribute
# seta

# set js
cd ${gr}/assets/js/fg
setj

# set tests
cd ${gr}/tests
sett

# set proxies
cd ${gr}/application/models/Proxies
setp

# set db alters
cd ${gr}/db/alters
setd

# set logs
cd ${gr}/application/logs
setl

# set assets
cd ${phoenix_assets_path}/2016
setA

# set documentation
cd ${work}/documentation/phoenix_beta
setD

# set vagrant
cd ${work}/sites/vagrant/development
setV

# set current
cd ${dt}/desk/current
setC

gr
