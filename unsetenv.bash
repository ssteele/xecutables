#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

bash_exports=''
bash_aliases=''

if [[ ! -z $bash_exports ]] || [[ ! -z $bash_aliases ]]; then
    source ${xec}/verify-bash-variables.bash

    # validate all variables
    verify_bash_exports $bash_exports
    bash_exports_valid=$?

    # validate all aliases
    verify_bash_aliases $bash_aliases
    bash_aliases_valid=$?

    if [[ 0 = ${bash_exports_valid} || 0 = ${bash_aliases_valid} ]]; then
        exit
    fi

    shopt -s expand_aliases
    source ~/.bashrc
fi


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     UNSET SHELL NAVIGATION VARIABLES
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ -n "$1" ]]; then

    envs=("g$1")
    msg="    $1 variable cleared"

else

    envs=(ga gA gaa gAA gb gB gbb gBB gc gC gcc gCC gd gD gdd gDD ge gE gee gEE gf gF gff gFF gg gG ggg gGG gh gH ghh gHH gi gI gii gII gj gJ gjj gJJ gk gK gkk gKK gl gL gll gLL gm gM gmm gMM gn gN gnn gNN go gO goo gOO gp gP gpp gPP gq gQ gqq gQQ gr gR grr gRR gs gS gss gSS gt gT gtt gTT gu gU guu gUU gv gV gvv gVV gw gW gww gWW gx gX gxx gXX gy gY gyy gYY gz gZ gzz gZZ)
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
