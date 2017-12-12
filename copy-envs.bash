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
#     COPY SHELL ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

echo ''

if [ -n "$ga" ]; then
    echo 'cd '$ga'; seta'
fi

if [ -n "$gA" ]; then
    echo 'cd '$gA'; setA'
fi

if [ -n "$gaa" ]; then
    echo 'cd '$gaa'; setaa'
fi

if [ -n "$gAA" ]; then
    echo 'cd '$gAA'; setAA'
fi

if [ -n "$gb" ]; then
    echo 'cd '$gb'; setb'
fi

if [ -n "$gB" ]; then
    echo 'cd '$gB'; setB'
fi

if [ -n "$gbb" ]; then
    echo 'cd '$gbb'; setbb'
fi

if [ -n "$gBB" ]; then
    echo 'cd '$gBB'; setBB'
fi

if [ -n "$gc" ]; then
    echo 'cd '$gc'; setc'
fi

if [ -n "$gC" ]; then
    echo 'cd '$gC'; setC'
fi

if [ -n "$gcc" ]; then
    echo 'cd '$gcc'; setcc'
fi

if [ -n "$gCC" ]; then
    echo 'cd '$gCC'; setCC'
fi

if [ -n "$gd" ]; then
    echo 'cd '$gd'; setd'
fi

if [ -n "$gD" ]; then
    echo 'cd '$gD'; setD'
fi

if [ -n "$gdd" ]; then
    echo 'cd '$gdd'; setdd'
fi

if [ -n "$gDD" ]; then
    echo 'cd '$gDD'; setDD'
fi

if [ -n "$ge" ]; then
    echo 'cd '$ge'; sete'
fi

if [ -n "$gE" ]; then
    echo 'cd '$gE'; setE'
fi

if [ -n "$gee" ]; then
    echo 'cd '$gee'; setee'
fi

if [ -n "$gEE" ]; then
    echo 'cd '$gEE'; setEE'
fi

if [ -n "$gf" ]; then
    echo 'cd '$gf'; setf'
fi

if [ -n "$gF" ]; then
    echo 'cd '$gF'; setF'
fi

if [ -n "$gff" ]; then
    echo 'cd '$gff'; setff'
fi

if [ -n "$gFF" ]; then
    echo 'cd '$gFF'; setFF'
fi

if [ -n "$gg" ]; then
    echo 'cd '$gg'; setg'
fi

if [ -n "$gG" ]; then
    echo 'cd '$gG'; setG'
fi

if [ -n "$ggg" ]; then
    echo 'cd '$ggg'; setgg'
fi

if [ -n "$gGG" ]; then
    echo 'cd '$gGG'; setGG'
fi

if [ -n "$gh" ]; then
    echo 'cd '$gh'; seth'
fi

if [ -n "$gH" ]; then
    echo 'cd '$gH'; setH'
fi

if [ -n "$ghh" ]; then
    echo 'cd '$ghh'; sethh'
fi

if [ -n "$gHH" ]; then
    echo 'cd '$gHH'; setHH'
fi

if [ -n "$gi" ]; then
    echo 'cd '$gi'; seti'
fi

if [ -n "$gI" ]; then
    echo 'cd '$gI'; setI'
fi

if [ -n "$gii" ]; then
    echo 'cd '$gii'; setii'
fi

if [ -n "$gII" ]; then
    echo 'cd '$gII'; setII'
fi

if [ -n "$gj" ]; then
    echo 'cd '$gj'; setj'
fi

if [ -n "$gJ" ]; then
    echo 'cd '$gJ'; setJ'
fi

if [ -n "$gjj" ]; then
    echo 'cd '$gjj'; setjj'
fi

if [ -n "$gJJ" ]; then
    echo 'cd '$gJJ'; setJJ'
fi

if [ -n "$gk" ]; then
    echo 'cd '$gk'; setk'
fi

if [ -n "$gK" ]; then
    echo 'cd '$gK'; setK'
fi

if [ -n "$gkk" ]; then
    echo 'cd '$gkk'; setkk'
fi

if [ -n "$gKK" ]; then
    echo 'cd '$gKK'; setKK'
fi

if [ -n "$gl" ]; then
    echo 'cd '$gl'; setl'
fi

if [ -n "$gL" ]; then
    echo 'cd '$gL'; setL'
fi

if [ -n "$gll" ]; then
    echo 'cd '$gll'; setll'
fi

if [ -n "$gLL" ]; then
    echo 'cd '$gLL'; setLL'
fi

if [ -n "$gm" ]; then
    echo 'cd '$gm'; setm'
fi

if [ -n "$gM" ]; then
    echo 'cd '$gM'; setM'
fi

if [ -n "$gmm" ]; then
    echo 'cd '$gmm'; setmm'
fi

if [ -n "$gMM" ]; then
    echo 'cd '$gMM'; setMM'
fi

if [ -n "$gn" ]; then
    echo 'cd '$gn'; setn'
fi

if [ -n "$gN" ]; then
    echo 'cd '$gN'; setN'
fi

if [ -n "$gnn" ]; then
    echo 'cd '$gnn'; setnn'
fi

if [ -n "$gNN" ]; then
    echo 'cd '$gNN'; setNN'
fi

if [ -n "$go" ]; then
    echo 'cd '$go'; seto'
fi

if [ -n "$gO" ]; then
    echo 'cd '$gO'; setO'
fi

if [ -n "$goo" ]; then
    echo 'cd '$goo'; setoo'
fi

if [ -n "$gOO" ]; then
    echo 'cd '$gOO'; setOO'
fi

if [ -n "$gp" ]; then
    echo 'cd '$gp'; setp'
fi

if [ -n "$gP" ]; then
    echo 'cd '$gP'; setP'
fi

if [ -n "$gpp" ]; then
    echo 'cd '$gpp'; setpp'
fi

if [ -n "$gPP" ]; then
    echo 'cd '$gPP'; setPP'
fi

if [ -n "$gq" ]; then
    echo 'cd '$gq'; setq'
fi

if [ -n "$gQ" ]; then
    echo 'cd '$gQ'; setQ'
fi

if [ -n "$gqq" ]; then
    echo 'cd '$gqq'; setqq'
fi

if [ -n "$gQQ" ]; then
    echo 'cd '$gQQ'; setQQ'
fi

if [ -n "$gr" ]; then
    echo 'cd '$gr'; setr'
fi

if [ -n "$gR" ]; then
    echo 'cd '$gR'; setR'
fi

if [ -n "$grr" ]; then
    echo 'cd '$grr'; setrr'
fi

if [ -n "$gRR" ]; then
    echo 'cd '$gRR'; setRR'
fi

if [ -n "$gs" ]; then
    echo 'cd '$gs'; sets'
fi

if [ -n "$gS" ]; then
    echo 'cd '$gS'; setS'
fi

if [ -n "$gss" ]; then
    echo 'cd '$gss'; setss'
fi

if [ -n "$gSS" ]; then
    echo 'cd '$gSS'; setSS'
fi

if [ -n "$gt" ]; then
    echo 'cd '$gt'; sett'
fi

if [ -n "$gT" ]; then
    echo 'cd '$gT'; setT'
fi

if [ -n "$gtt" ]; then
    echo 'cd '$gtt'; settt'
fi

if [ -n "$gTT" ]; then
    echo 'cd '$gTT'; setTT'
fi

if [ -n "$gu" ]; then
    echo 'cd '$gu'; setu'
fi

if [ -n "$gU" ]; then
    echo 'cd '$gU'; setU'
fi

if [ -n "$guu" ]; then
    echo 'cd '$guu'; setuu'
fi

if [ -n "$gUU" ]; then
    echo 'cd '$gUU'; setUU'
fi

if [ -n "$gv" ]; then
    echo 'cd '$gv'; setv'
fi

if [ -n "$gV" ]; then
    echo 'cd '$gV'; setV'
fi

if [ -n "$gvv" ]; then
    echo 'cd '$gvv'; setvv'
fi

if [ -n "$gVV" ]; then
    echo 'cd '$gVV'; setVV'
fi

if [ -n "$gw" ]; then
    echo 'cd '$gw'; setw'
fi

if [ -n "$gW" ]; then
    echo 'cd '$gW'; setW'
fi

if [ -n "$gww" ]; then
    echo 'cd '$gww'; setww'
fi

if [ -n "$gWW" ]; then
    echo 'cd '$gWW'; setWW'
fi

if [ -n "$gx" ]; then
    echo 'cd '$gx'; setx'
fi

if [ -n "$gX" ]; then
    echo 'cd '$gX'; setX'
fi

if [ -n "$gxx" ]; then
    echo 'cd '$gxx'; setxx'
fi

if [ -n "$gXX" ]; then
    echo 'cd '$gXX'; setXX'
fi

if [ -n "$gy" ]; then
    echo 'cd '$gy'; sety'
fi

if [ -n "$gY" ]; then
    echo 'cd '$gY'; setY'
fi

if [ -n "$gyy" ]; then
    echo 'cd '$gyy'; setyy'
fi

if [ -n "$gYY" ]; then
    echo 'cd '$gYY'; setYY'
fi

if [ -n "$gz" ]; then
    echo 'cd '$gz'; setz'
fi

if [ -n "$gZ" ]; then
    echo 'cd '$gZ'; setZ'
fi

if [ -n "$gzz" ]; then
    echo 'cd '$gzz'; setzz'
fi

if [ -n "$gZZ" ]; then
    echo 'cd '$gZZ'; setZZ'
fi

echo ''
