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
setf
seto

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

    # set bundle root
    cd ${bs_bundles}/${bundle}Bundle
    setrr

    # set bundle routing of fallback to app/config
    if [ -f ${grr}/Resources/config/routing.yml ]; then
        cd ${grr}/Resources/config
        setoo
    else
        unsete oo
    fi

    # set controllers
    if [[ -d ${grr}/Controller ]]; then
        cd ${grr}/Controller
        setc
    else
        unsete c
    fi

    # set entities
    if [[ -d ${grr}/Entity ]]; then
        cd ${grr}/Entity
        sete
    else
        unsete e
    fi

    if [[ -d ${grr}/Repository ]]; then
        cd ${grr}/Repository
        setm
    else
        unsete m
    fi

    # set services
    if [[ -d ${grr}/Service ]]; then
        cd ${grr}/Service
        sets
    else
        unsete s
    fi

    # set views
    if [[ -d ${grr}/Resources/views ]]; then
        cd ${grr}/Resources/views
        setv
    else
        unsete v
    fi

    # set js
    if [[ -d ${grr}/Resources/public/js ]]; then
        cd ${grr}/Resources/public/js
        setj
    else
        unsete j
    fi

    # set tests (if any exist)
    if [[ -d ${grr}/Tests ]]; then
        cd ${grr}/Tests
        sett
    else
        unsete t
    fi
fi

gr
