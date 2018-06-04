#!/bin/bash


# # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# #     VERIFY ENVIRONMENT
# # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# source ${xec}/verify-bash-variables.bash

# # validate all variables
# verify_bash_exports bs_core_path bs_core_assets_path bs_core_documentation_path bs_core_tools_path work dt
# bash_exports_valid=$?

# # validate all aliases
# verify_bash_aliases
# bash_aliases_valid=$?

# if [[ 0 = ${bash_exports_valid} || 0 = ${bash_aliases_valid} ]]; then
#     return
# fi

# shopt -s expand_aliases
# source ~/.bashrc


# # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# #     SET BS CORE ENVIRONMENT
# # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# # custom site
# env=${bs_core_path}

# # set root
# cd ${env}
# setR

# # set global config and routing
# cd ${gR}/app/config
# setF
# setO

# # set mysql db folder
# cd ${gR}/app/mysql
# setD

# # set tests
# cd ${gR}/test
# setT

# # set assets folder
# cd ${gR}/web
# setA

# # set vagrant
# gR
# setV

# # set assets
# if [ -d "${bs_core_assets_path}" ]; then
#     cd ${bs_core_assets_path}
#     year=`date "+%Y"`

#     if [ -d $year ]; then
#         cd ${year}
#     fi

#     setAA
# fi

# # set documentation
# cd ${bs_core_documentation_path}
# setDD

# # set tools
# cd ${bs_core_tools_path}
# setTT

# # set current
# cd ${dt}/bs
# setCC

# # set bundles
# bs_bundles=${gR}/src/BiteSquad
# cd ${bs_bundles}
# setb

# # set current bundle
# if [[ -n "$1" ]]; then
#     bundle="$(tr '[:lower:]' '[:upper:]' <<< ${1:0:1})${1:1}"

#     # set bundle root
#     cd ${bs_bundles}/${bundle}Bundle
#     setr

#     # set bundle routing or fallback to app/config
#     if [[ -d ${gr}/Resources/config ]]; then
#         cd ${gr}/Resources/config
#         seto
#     else
#         unsete o
#     fi

#     # set controllers
#     if [[ -d ${gr}/Controller ]]; then
#         cd ${gr}/Controller
#         setc
#     else
#         unsete c
#     fi

#     # set entities
#     if [[ -d ${gr}/Entity ]]; then
#         cd ${gr}/Entity
#         sete
#     else
#         unsete e
#     fi

#     # set repositories
#     if [[ -d ${gr}/Repository ]]; then
#         cd ${gr}/Repository
#         setm
#     else
#         unsete m
#     fi

#     # set services
#     if [[ -d ${gr}/Service ]]; then
#         cd ${gr}/Service
#         sets
#     else
#         unsete s
#     fi

#     # set views
#     if [[ -d ${gr}/Resources/views ]]; then
#         cd ${gr}/Resources/views
#         setv
#     else
#         unsete v
#     fi

#     # set js
#     if [[ -d ${gr}/Resources/public/js ]]; then
#         cd ${gr}/Resources/public/js
#         setj
#     else
#         unsete j
#     fi

#     # set styles
#     if [[ -d ${gr}/Resources/public/scss ]]; then
#         cd ${gr}/Resources/public/scss
#         setx
#     elif [[ -d ${gr}/Resources/public/css ]]; then
#         cd ${gr}/Resources/public/css
#         setx
#     else
#         unsete x
#     fi

#     # set tests
#     if [[ -d ${gr}/Tests ]]; then
#         cd ${gr}/Tests
#         sett
#     else
#         unsete t
#     fi

#     secondary_bundle='Core'
#     if [[ -n "$2" ]]; then
#         secondary_bundle="$(tr '[:lower:]' '[:upper:]' <<< ${2:0:1})${2:1}"
#     fi

#     if [[ 'Core' != "$bundle" ]]; then

#         # set secondary bundle root
#         cd ${bs_bundles}/${secondary_bundle}Bundle
#         setrr

#         # set secondary bundle routing or fallback to app/config
#         if [[ -d ${grr}/Resources/config ]]; then
#             cd ${grr}/Resources/config
#             setoo
#         else
#             unsete oo
#         fi

#         # set secondary bundle controllers
#         if [[ -d ${grr}/Controller ]]; then
#             cd ${grr}/Controller
#             setcc
#         else
#             unsete cc
#         fi

#         # set secondary bundle entities
#         if [[ -d ${grr}/Entity ]]; then
#             cd ${grr}/Entity
#             setee
#         else
#             unsete ee
#         fi

#         # set secondary bundle repositories
#         if [[ -d ${grr}/Repository ]]; then
#             cd ${grr}/Repository
#             setmm
#         else
#             unsete mm
#         fi

#         # set secondary bundle services
#         if [[ -d ${grr}/Service ]]; then
#             cd ${grr}/Service
#             setss
#         else
#             unsete ss
#         fi

#         # set secondary bundle views
#         if [[ -d ${grr}/Resources/views ]]; then
#             cd ${grr}/Resources/views
#             setvv
#         else
#             unsete vv
#         fi

#         # set secondary bundle js
#         if [[ -d ${grr}/Resources/public/js ]]; then
#             cd ${grr}/Resources/public/js
#             setjj
#         else
#             unsete jj
#         fi

#         # set secondary bundle styles
#         if [[ -d ${grr}/Resources/public/scss ]]; then
#             cd ${grr}/Resources/public/scss
#             setxx
#         elif [[ -d ${grr}/Resources/public/css ]]; then
#             cd ${grr}/Resources/public/css
#             setxx
#         else
#             unsete xx
#         fi

#         # set secondary bundle tests
#         if [[ -d ${grr}/Tests ]]; then
#             cd ${grr}/Tests
#             settt
#         else
#             unsete tt
#         fi

#     fi

# fi

# gR
