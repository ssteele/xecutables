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

if [ -n "$ga" ]; then
    echo '     a: '$ga
fi

if [ -n "$gA" ]; then
    echo '     A: '$gA
fi

if [ -n "$gaa" ]; then
    echo '    aa: '$gaa
fi

if [ -n "$gb" ]; then
    echo '     b: '$gb
fi

if [ -n "$gB" ]; then
    echo '     B: '$gB
fi

if [ -n "$gbb" ]; then
    echo '    bb: '$gbb
fi

if [ -n "$gc" ]; then
    echo '     c: '$gc
fi

if [ -n "$gC" ]; then
    echo '     C: '$gC
fi

if [ -n "$gcc" ]; then
    echo '    cc: '$gcc
fi

if [ -n "$gd" ]; then
    echo '     d: '$gd
fi

if [ -n "$gD" ]; then
    echo '     D: '$gD
fi

if [ -n "$gdd" ]; then
    echo '    dd: '$gdd
fi

if [ -n "$ge" ]; then
    echo '     e: '$ge
fi

if [ -n "$gE" ]; then
    echo '     E: '$gE
fi

if [ -n "$gee" ]; then
    echo '    ee: '$gee
fi

if [ -n "$gf" ]; then
    echo '     f: '$gf
fi

if [ -n "$gF" ]; then
    echo '     F: '$gF
fi

if [ -n "$gff" ]; then
    echo '    ff: '$gff
fi

if [ -n "$gg" ]; then
    echo '     g: '$gg
fi

if [ -n "$gG" ]; then
    echo '     G: '$gG
fi

if [ -n "$ggg" ]; then
    echo '    gg: '$ggg
fi

if [ -n "$gh" ]; then
    echo '     h: '$gh
fi

if [ -n "$gH" ]; then
    echo '     H: '$gH
fi

if [ -n "$ghh" ]; then
    echo '    hh: '$ghh
fi

if [ -n "$gi" ]; then
    echo '     i: '$gi
fi

if [ -n "$gI" ]; then
    echo '     I: '$gI
fi

if [ -n "$gii" ]; then
    echo '    ii: '$gii
fi

if [ -n "$gj" ]; then
    echo '     j: '$gj
fi

if [ -n "$gJ" ]; then
    echo '     J: '$gJ
fi

if [ -n "$gjj" ]; then
    echo '    jj: '$gjj
fi

if [ -n "$gk" ]; then
    echo '     k: '$gk
fi

if [ -n "$gK" ]; then
    echo '     K: '$gK
fi

if [ -n "$gkk" ]; then
    echo '    kk: '$gkk
fi

if [ -n "$gl" ]; then
    echo '     l: '$gl
fi

if [ -n "$gL" ]; then
    echo '     L: '$gL
fi

if [ -n "$gll" ]; then
    echo '    ll: '$gll
fi

if [ -n "$gm" ]; then
    echo '     m: '$gm
fi

if [ -n "$gM" ]; then
    echo '     M: '$gM
fi

if [ -n "$gmm" ]; then
    echo '    mm: '$gmm
fi

if [ -n "$gn" ]; then
    echo '     n: '$gn
fi

if [ -n "$gN" ]; then
    echo '     N: '$gN
fi

if [ -n "$gnn" ]; then
    echo '    nn: '$gnn
fi

if [ -n "$go" ]; then
    echo '     o: '$go
fi

if [ -n "$gO" ]; then
    echo '     O: '$gO
fi

if [ -n "$goo" ]; then
    echo '    oo: '$goo
fi

if [ -n "$gp" ]; then
    echo '     p: '$gp
fi

if [ -n "$gP" ]; then
    echo '     P: '$gP
fi

if [ -n "$gpp" ]; then
    echo '    pp: '$gpp
fi

if [ -n "$gq" ]; then
    echo '     q: '$gq
fi

if [ -n "$gQ" ]; then
    echo '     Q: '$gQ
fi

if [ -n "$gqq" ]; then
    echo '    qq: '$gqq
fi

if [ -n "$gr" ]; then
    echo '     r: '$gr
fi

if [ -n "$gR" ]; then
    echo '     R: '$gR
fi

if [ -n "$grr" ]; then
    echo '    rr: '$grr
fi

if [ -n "$gs" ]; then
    echo '     s: '$gs
fi

if [ -n "$gS" ]; then
    echo '     S: '$gS
fi

if [ -n "$gss" ]; then
    echo '    ss: '$gss
fi

if [ -n "$gt" ]; then
    echo '     t: '$gt
fi

if [ -n "$gT" ]; then
    echo '     T: '$gT
fi

if [ -n "$gtt" ]; then
    echo '    tt: '$gtt
fi

if [ -n "$gu" ]; then
    echo '     u: '$gu
fi

if [ -n "$gU" ]; then
    echo '     U: '$gU
fi

if [ -n "$guu" ]; then
    echo '    uu: '$guu
fi

if [ -n "$gv" ]; then
    echo '     v: '$gv
fi

if [ -n "$gV" ]; then
    echo '     V: '$gV
fi

if [ -n "$gvv" ]; then
    echo '    vv: '$gvv
fi

if [ -n "$gw" ]; then
    echo '     w: '$gw
fi

if [ -n "$gW" ]; then
    echo '     W: '$gW
fi

if [ -n "$gww" ]; then
    echo '    ww: '$gww
fi

if [ -n "$gx" ]; then
    echo '     x: '$gx
fi

if [ -n "$gX" ]; then
    echo '     X: '$gX
fi

if [ -n "$gxx" ]; then
    echo '    xx: '$gxx
fi

if [ -n "$gy" ]; then
    echo '     y: '$gy
fi

if [ -n "$gY" ]; then
    echo '     Y: '$gY
fi

if [ -n "$gyy" ]; then
    echo '    yy: '$gyy
fi

if [ -n "$gz" ]; then
    echo '     z: '$gz
fi

if [ -n "$gZ" ]; then
    echo '     Z: '$gZ
fi

if [ -n "$gzz" ]; then
    echo '    zz: '$gzz
fi

echo ''
