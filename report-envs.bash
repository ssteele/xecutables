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
#     REPORT SHELL NAVIGATION VARIABLES
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

echo ''

if [ -n "$gAA" ]; then
    echo '    AA: '$gAA
fi

if [ -n "$gBB" ]; then
    echo '    BB: '$gBB
fi

if [ -n "$gCC" ]; then
    echo '    CC: '$gCC
fi

if [ -n "$gDD" ]; then
    echo '    DD: '$gDD
fi

if [ -n "$gEE" ]; then
    echo '    EE: '$gEE
fi

if [ -n "$gFF" ]; then
    echo '    FF: '$gFF
fi

if [ -n "$gGG" ]; then
    echo '    GG: '$gGG
fi

if [ -n "$gHH" ]; then
    echo '    HH: '$gHH
fi

if [ -n "$gII" ]; then
    echo '    II: '$gII
fi

if [ -n "$gJJ" ]; then
    echo '    JJ: '$gJJ
fi

if [ -n "$gKK" ]; then
    echo '    KK: '$gKK
fi

if [ -n "$gLL" ]; then
    echo '    LL: '$gLL
fi

if [ -n "$gMM" ]; then
    echo '    MM: '$gMM
fi

if [ -n "$gNN" ]; then
    echo '    NN: '$gNN
fi

if [ -n "$gOO" ]; then
    echo '    OO: '$gOO
fi

if [ -n "$gPP" ]; then
    echo '    PP: '$gPP
fi

if [ -n "$gQQ" ]; then
    echo '    QQ: '$gQQ
fi

if [ -n "$gRR" ]; then
    echo '    RR: '$gRR
fi

if [ -n "$gSS" ]; then
    echo '    SS: '$gSS
fi

if [ -n "$gTT" ]; then
    echo '    TT: '$gTT
fi

if [ -n "$gUU" ]; then
    echo '    UU: '$gUU
fi

if [ -n "$gVV" ]; then
    echo '    VV: '$gVV
fi

if [ -n "$gWW" ]; then
    echo '    WW: '$gWW
fi

if [ -n "$gXX" ]; then
    echo '    XX: '$gXX
fi

if [ -n "$gYY" ]; then
    echo '    YY: '$gYY
fi

if [ -n "$gZZ" ]; then
    echo '    ZZ: '$gZZ
fi

if [ -n "$gA" ]; then
    echo '     A: '$gA
fi

if [ -n "$gB" ]; then
    echo '     B: '$gB
fi

if [ -n "$gC" ]; then
    echo '     C: '$gC
fi

if [ -n "$gD" ]; then
    echo '     D: '$gD
fi

if [ -n "$gE" ]; then
    echo '     E: '$gE
fi

if [ -n "$gF" ]; then
    echo '     F: '$gF
fi

if [ -n "$gG" ]; then
    echo '     G: '$gG
fi

if [ -n "$gH" ]; then
    echo '     H: '$gH
fi

if [ -n "$gI" ]; then
    echo '     I: '$gI
fi

if [ -n "$gJ" ]; then
    echo '     J: '$gJ
fi

if [ -n "$gK" ]; then
    echo '     K: '$gK
fi

if [ -n "$gL" ]; then
    echo '     L: '$gL
fi

if [ -n "$gM" ]; then
    echo '     M: '$gM
fi

if [ -n "$gN" ]; then
    echo '     N: '$gN
fi

if [ -n "$gO" ]; then
    echo '     O: '$gO
fi

if [ -n "$gP" ]; then
    echo '     P: '$gP
fi

if [ -n "$gQ" ]; then
    echo '     Q: '$gQ
fi

if [ -n "$gR" ]; then
    echo '     R: '$gR
fi

if [ -n "$gS" ]; then
    echo '     S: '$gS
fi

if [ -n "$gT" ]; then
    echo '     T: '$gT
fi

if [ -n "$gU" ]; then
    echo '     U: '$gU
fi

if [ -n "$gV" ]; then
    echo '     V: '$gV
fi

if [ -n "$gW" ]; then
    echo '     W: '$gW
fi

if [ -n "$gX" ]; then
    echo '     X: '$gX
fi

if [ -n "$gY" ]; then
    echo '     Y: '$gY
fi

if [ -n "$gZ" ]; then
    echo '     Z: '$gZ
fi

if [ -n "$gaa" ]; then
    echo '    aa: '$gaa
fi

if [ -n "$gbb" ]; then
    echo '    bb: '$gbb
fi

if [ -n "$gcc" ]; then
    echo '    cc: '$gcc
fi

if [ -n "$gdd" ]; then
    echo '    dd: '$gdd
fi

if [ -n "$gee" ]; then
    echo '    ee: '$gee
fi

if [ -n "$gff" ]; then
    echo '    ff: '$gff
fi

if [ -n "$ggg" ]; then
    echo '    gg: '$ggg
fi

if [ -n "$ghh" ]; then
    echo '    hh: '$ghh
fi

if [ -n "$gii" ]; then
    echo '    ii: '$gii
fi

if [ -n "$gjj" ]; then
    echo '    jj: '$gjj
fi

if [ -n "$gkk" ]; then
    echo '    kk: '$gkk
fi

if [ -n "$gll" ]; then
    echo '    ll: '$gll
fi

if [ -n "$gmm" ]; then
    echo '    mm: '$gmm
fi

if [ -n "$gnn" ]; then
    echo '    nn: '$gnn
fi

if [ -n "$goo" ]; then
    echo '    oo: '$goo
fi

if [ -n "$gpp" ]; then
    echo '    pp: '$gpp
fi

if [ -n "$gqq" ]; then
    echo '    qq: '$gqq
fi

if [ -n "$grr" ]; then
    echo '    rr: '$grr
fi

if [ -n "$gss" ]; then
    echo '    ss: '$gss
fi

if [ -n "$gtt" ]; then
    echo '    tt: '$gtt
fi

if [ -n "$guu" ]; then
    echo '    uu: '$guu
fi

if [ -n "$gvv" ]; then
    echo '    vv: '$gvv
fi

if [ -n "$gww" ]; then
    echo '    ww: '$gww
fi

if [ -n "$gxx" ]; then
    echo '    xx: '$gxx
fi

if [ -n "$gyy" ]; then
    echo '    yy: '$gyy
fi

if [ -n "$gzz" ]; then
    echo '    zz: '$gzz
fi

if [ -n "$ga" ]; then
    echo '     a: '$ga
fi

if [ -n "$gb" ]; then
    echo '     b: '$gb
fi

if [ -n "$gc" ]; then
    echo '     c: '$gc
fi

if [ -n "$gd" ]; then
    echo '     d: '$gd
fi

if [ -n "$ge" ]; then
    echo '     e: '$ge
fi

if [ -n "$gf" ]; then
    echo '     f: '$gf
fi

if [ -n "$gg" ]; then
    echo '     g: '$gg
fi

if [ -n "$gh" ]; then
    echo '     h: '$gh
fi

if [ -n "$gi" ]; then
    echo '     i: '$gi
fi

if [ -n "$gj" ]; then
    echo '     j: '$gj
fi

if [ -n "$gk" ]; then
    echo '     k: '$gk
fi

if [ -n "$gl" ]; then
    echo '     l: '$gl
fi

if [ -n "$gm" ]; then
    echo '     m: '$gm
fi

if [ -n "$gn" ]; then
    echo '     n: '$gn
fi

if [ -n "$go" ]; then
    echo '     o: '$go
fi

if [ -n "$gp" ]; then
    echo '     p: '$gp
fi

if [ -n "$gq" ]; then
    echo '     q: '$gq
fi

if [ -n "$gr" ]; then
    echo '     r: '$gr
fi

if [ -n "$gs" ]; then
    echo '     s: '$gs
fi

if [ -n "$gt" ]; then
    echo '     t: '$gt
fi

if [ -n "$gu" ]; then
    echo '     u: '$gu
fi

if [ -n "$gv" ]; then
    echo '     v: '$gv
fi

if [ -n "$gw" ]; then
    echo '     w: '$gw
fi

if [ -n "$gx" ]; then
    echo '     x: '$gx
fi

if [ -n "$gy" ]; then
    echo '     y: '$gy
fi

if [ -n "$gz" ]; then
    echo '     z: '$gz
fi

echo ''