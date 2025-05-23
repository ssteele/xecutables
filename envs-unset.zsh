#!/bin/zsh


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

zsh_exports=()

source_bootstrap=false
for e in "${zsh_exports[@]}"; do
    if [[ -z ${(P)e} ]]; then
        source_bootstrap=true
    fi
done

if $source_bootstrap; then
    source ${xec}/_bootstrap.zsh
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

    if [[ -v ${env} ]]; then

        unalias ${env}
        unset ${env}

    elif [[ -n "$1" ]]; then

        msg="    $1 not set"

    fi

done

echo ''
echo ${msg}
echo ''
