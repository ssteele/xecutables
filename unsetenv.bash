#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports
bash_exports_valid=$?

# validate all aliases
verify_bash_aliases
bash_aliases_valid=$?

if [[ 0 = ${bash_exports_valid} || 0 = ${bash_aliases_valid} ]]; then
    exit
fi

shopt -s expand_aliases
source ~/.bashrc


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     UNSET SHELL NAVIGATION VARIABLES
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ -n "$1" ]]; then

    envs=("g$1")
    msg="    $1 variable cleared"

else

    envs=(ga gA gaa gb gB gbb gc gC gcc gd gD gdd ge gE gee gf gF gff gg gG ggg gh gH ghh gi gI gii gj gJ gjj gk gK gkk gl gL gll gm gM gmm gn gN gnn go gO goo gp gP gpp gq gQ gqq gr gR grr gs gS gss gt gT gtt gu gU guu gv gV gvv gw gW gww gx gX gxx gy gY gyy gz gZ gzz)
    msg="    ...environment variables cleared"

fi

for env in "${envs[@]}"; do

    if [ -n "${!env}" ]; then

        unalias ${env}
        unset ${env}

    fi

done

echo ''
echo ${msg}
echo ''
