#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports bs_core_path bs_core_assets_path bs_core_documentation_path bs_core_tools_path work dt
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
#     SET BS CORE ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# custom site
env=${bs_core_path}

# set root
cd ${env}
setR

# set assets folder
cd ${gR}/web
setA

# set mysql db folder
cd ${gR}/app/mysql
setD

# set global config and routing
cd ${gR}/app/config
setF
setO

# set tests
cd ${gR}/test
setT

# set vagrant
gR
setV

# set assets
year=$(date +'%Y')
cd ${bs_core_assets_path}/${year}
setAA

# set documentation
cd ${bs_core_documentation_path}
setDD

# set tools
cd ${bs_core_tools_path}
setTT

# set current
cd ${dt}/bs
setCC

# set bundles
bs_bundles=${gR}/src/BiteSquad
cd ${bs_bundles}
setb

# set current bundle
if [[ -n "$1" ]]; then
    bundle="$(tr '[:lower:]' '[:upper:]' <<< ${1:0:1})${1:1}"

    # set bundle root
    cd ${bs_bundles}/${bundle}Bundle
    setr

    # set bundle routing or fallback to app/config
    if [ -f ${gr}/Resources/config/routing.yml ]; then
        cd ${gr}/Resources/config
        seto
    else
        unsete o
    fi

    # set controllers
    if [[ -d ${gr}/Controller ]]; then
        cd ${gr}/Controller
        setc
    else
        unsete c
    fi

    # set entities
    if [[ -d ${gr}/Entity ]]; then
        cd ${gr}/Entity
        sete
    else
        unsete e
    fi

    # set repositories
    if [[ -d ${gr}/Repository ]]; then
        cd ${gr}/Repository
        setm
    else
        unsete m
    fi

    # set services
    if [[ -d ${gr}/Service ]]; then
        cd ${gr}/Service
        sets
    else
        unsete s
    fi

    # set views
    if [[ -d ${gr}/Resources/views ]]; then
        cd ${gr}/Resources/views
        setv
    else
        unsete v
    fi

    # set js
    if [[ -d ${gr}/Resources/public/js ]]; then
        cd ${gr}/Resources/public/js
        setj
    else
        unsete j
    fi

    # set styles
    if [[ -d ${gr}/Resources/public/scss ]]; then
        cd ${gr}/Resources/public/scss
        setx
    elif [[ -d ${gr}/Resources/public/css ]]; then
        cd ${gr}/Resources/public/css
        setx
    else
        unsete x
    fi

    # set tests
    if [[ -d ${gr}/Tests ]]; then
        cd ${gr}/Tests
        sett
    else
        unsete t
    fi

    if [[ 'Core' != "$bundle" ]]; then

        # set core bundle root
        cd ${bs_bundles}/CoreBundle
        setrr

        # set core routing
        cd ${grr}/Resources/config
        setoo

        # set core controllers
        cd ${grr}/Controller
        setcc

        # set core entities
        cd ${grr}/Entity
        setee

        # set core repositories
        cd ${grr}/Repository
        setmm

        # set core services
        cd ${grr}/Service
        setss

        # set core views
        cd ${grr}/Resources/views
        setvv

        # set core js
        cd ${grr}/Resources/public/js
        setjj

        # set core styles (future proof styles)
        if [[ -d ${grr}/Resources/public/scss ]]; then
            cd ${grr}/Resources/public/scss
            setxx
        elif [[ -d ${grr}/Resources/public/css ]]; then
            cd ${grr}/Resources/public/css
            setxx
        fi

        # set core tests
        cd ${grr}/Tests
        settt

    fi

fi

gR
