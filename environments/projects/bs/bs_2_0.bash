#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports bs_2_0_path bs_2_0_assets_path work dt
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
#     SET BS 2.0 ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# custom site
env=${bs_2_0_path}

# set root
cd ${env}
setr

# set config and general routing
cd ${gr}/app/config
setrr

# set mysql db folder
cd ${gr}/app/mysql
setd

# # set logs
# cd ${gr}/application/logs
# setl

# set assets
cd ${bs_2_0_assets_path}/2017
setA

# set documentation
cd ${work}/docs/bite-squad-2-0
setD

# set vagrant
gr
setV

# set current
cd ${dt}/desk/current
setC

# set bundles
bs_bundles=${gr}/src/BiteSquad
cd ${bs_bundles}
setb

if [[ -n "$1" ]]; then
    bundle="$(tr '[:lower:]' '[:upper:]' <<< ${1:0:1})${1:1}"

    # set bundle routing of fallback to app/config
    if [ -f ${bs_bundles}/${bundle}Bundle/Resources/config/routing.yml ]; then
        cd ${bs_bundles}/${bundle}Bundle/Resources/config
        seto
    else
        grr
        seto
    fi

    # set controllers
    if [[ -d ${bs_bundles}/${bundle}Bundle/Controller ]]; then
        cd ${bs_bundles}/${bundle}Bundle/Controller
        setc
    else
        unsete c
    fi

    # set entities
    if [[ -d ${bs_bundles}/${bundle}Bundle/Entity ]]; then
        cd ${bs_bundles}/${bundle}Bundle/Entity
        sete
    else
        unsete e
    fi

    # # set models
    # cd ${gf}/Model
    # setm

    # set views
    if [[ -d ${bs_bundles}/${bundle}Bundle/Resources/views ]]; then
        cd ${bs_bundles}/${bundle}Bundle/Resources/views
        setv
    else
        unsete v
    fi

    # set services
    if [[ -d ${bs_bundles}/${bundle}Bundle/Service ]]; then
        cd ${bs_bundles}/${bundle}Bundle/Service
        sets
    else
        unsete s
    fi

    # set js
    if [[ -d ${bs_bundles}/${bundle}Bundle/Resources/public/js ]]; then
        cd ${bs_bundles}/${bundle}Bundle/Resources/public/js
        setj
    else
        unsete j
    fi

    # set tests (if any exist)
    if [[ -d ${bs_bundles}/${bundle}Bundle/Tests ]]; then
        cd ${bs_bundles}/${bundle}Bundle/Tests
        sett
    else
        unsete t
    fi
fi

gr
