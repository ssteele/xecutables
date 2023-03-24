#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

bash_exports='HOME'
bash_aliases=''

if [[ ! -z $bash_exports ]] || [[ ! -z $bash_aliases ]]; then
    source ${xec}/_bootstrap.bash
fi


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     COPY SHELL ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

envs=()

echo ''

if [ -n "$gAA" ]; then
    envs+=( 'cd '$gAA'; setAA' )
fi
if [ -n "$gBB" ]; then
    envs+=( 'cd '$gBB'; setBB' )
fi
if [ -n "$gCC" ]; then
    envs+=( 'cd '$gCC'; setCC' )
fi
if [ -n "$gDD" ]; then
    envs+=( 'cd '$gDD'; setDD' )
fi
if [ -n "$gEE" ]; then
    envs+=( 'cd '$gEE'; setEE' )
fi
if [ -n "$gFF" ]; then
    envs+=( 'cd '$gFF'; setFF' )
fi
if [ -n "$gGG" ]; then
    envs+=( 'cd '$gGG'; setGG' )
fi
if [ -n "$gHH" ]; then
    envs+=( 'cd '$gHH'; setHH' )
fi
if [ -n "$gII" ]; then
    envs+=( 'cd '$gII'; setII' )
fi
if [ -n "$gJJ" ]; then
    envs+=( 'cd '$gJJ'; setJJ' )
fi
if [ -n "$gKK" ]; then
    envs+=( 'cd '$gKK'; setKK' )
fi
if [ -n "$gLL" ]; then
    envs+=( 'cd '$gLL'; setLL' )
fi
if [ -n "$gMM" ]; then
    envs+=( 'cd '$gMM'; setMM' )
fi
if [ -n "$gNN" ]; then
    envs+=( 'cd '$gNN'; setNN' )
fi
if [ -n "$gOO" ]; then
    envs+=( 'cd '$gOO'; setOO' )
fi
if [ -n "$gPP" ]; then
    envs+=( 'cd '$gPP'; setPP' )
fi
if [ -n "$gQQ" ]; then
    envs+=( 'cd '$gQQ'; setQQ' )
fi
if [ -n "$gRR" ]; then
    envs+=( 'cd '$gRR'; setRR' )
fi
if [ -n "$gSS" ]; then
    envs+=( 'cd '$gSS'; setSS' )
fi
if [ -n "$gTT" ]; then
    envs+=( 'cd '$gTT'; setTT' )
fi
if [ -n "$gUU" ]; then
    envs+=( 'cd '$gUU'; setUU' )
fi
if [ -n "$gVV" ]; then
    envs+=( 'cd '$gVV'; setVV' )
fi
if [ -n "$gWW" ]; then
    envs+=( 'cd '$gWW'; setWW' )
fi
if [ -n "$gXX" ]; then
    envs+=( 'cd '$gXX'; setXX' )
fi
if [ -n "$gYY" ]; then
    envs+=( 'cd '$gYY'; setYY' )
fi
if [ -n "$gZZ" ]; then
    envs+=( 'cd '$gZZ'; setZZ' )
fi

if [ -n "$gA" ]; then
    envs+=( 'cd '$gA'; setA' )
fi
if [ -n "$gB" ]; then
    envs+=( 'cd '$gB'; setB' )
fi
if [ -n "$gC" ]; then
    envs+=( 'cd '$gC'; setC' )
fi
if [ -n "$gD" ]; then
    envs+=( 'cd '$gD'; setD' )
fi
if [ -n "$gE" ]; then
    envs+=( 'cd '$gE'; setE' )
fi
if [ -n "$gF" ]; then
    envs+=( 'cd '$gF'; setF' )
fi
if [ -n "$gG" ]; then
    envs+=( 'cd '$gG'; setG' )
fi
if [ -n "$gH" ]; then
    envs+=( 'cd '$gH'; setH' )
fi
if [ -n "$gI" ]; then
    envs+=( 'cd '$gI'; setI' )
fi
if [ -n "$gJ" ]; then
    envs+=( 'cd '$gJ'; setJ' )
fi
if [ -n "$gK" ]; then
    envs+=( 'cd '$gK'; setK' )
fi
if [ -n "$gL" ]; then
    envs+=( 'cd '$gL'; setL' )
fi
if [ -n "$gM" ]; then
    envs+=( 'cd '$gM'; setM' )
fi
if [ -n "$gN" ]; then
    envs+=( 'cd '$gN'; setN' )
fi
if [ -n "$gO" ]; then
    envs+=( 'cd '$gO'; setO' )
fi
if [ -n "$gP" ]; then
    envs+=( 'cd '$gP'; setP' )
fi
if [ -n "$gQ" ]; then
    envs+=( 'cd '$gQ'; setQ' )
fi
if [ -n "$gR" ]; then
    envs+=( 'cd '$gR'; setR' )
fi
if [ -n "$gS" ]; then
    envs+=( 'cd '$gS'; setS' )
fi
if [ -n "$gT" ]; then
    envs+=( 'cd '$gT'; setT' )
fi
if [ -n "$gU" ]; then
    envs+=( 'cd '$gU'; setU' )
fi
if [ -n "$gV" ]; then
    envs+=( 'cd '$gV'; setV' )
fi
if [ -n "$gW" ]; then
    envs+=( 'cd '$gW'; setW' )
fi
if [ -n "$gX" ]; then
    envs+=( 'cd '$gX'; setX' )
fi
if [ -n "$gY" ]; then
    envs+=( 'cd '$gY'; setY' )
fi
if [ -n "$gZ" ]; then
    envs+=( 'cd '$gZ'; setZ' )
fi

if [ -n "$gaa" ]; then
    envs+=( 'cd '$gaa'; setaa' )
fi
if [ -n "$gbb" ]; then
    envs+=( 'cd '$gbb'; setbb' )
fi
if [ -n "$gcc" ]; then
    envs+=( 'cd '$gcc'; setcc' )
fi
if [ -n "$gdd" ]; then
    envs+=( 'cd '$gdd'; setdd' )
fi
if [ -n "$gee" ]; then
    envs+=( 'cd '$gee'; setee' )
fi
if [ -n "$gff" ]; then
    envs+=( 'cd '$gff'; setff' )
fi
if [ -n "$ggg" ]; then
    envs+=( 'cd '$ggg'; setgg' )
fi
if [ -n "$ghh" ]; then
    envs+=( 'cd '$ghh'; sethh' )
fi
if [ -n "$gii" ]; then
    envs+=( 'cd '$gii'; setii' )
fi
if [ -n "$gjj" ]; then
    envs+=( 'cd '$gjj'; setjj' )
fi
if [ -n "$gkk" ]; then
    envs+=( 'cd '$gkk'; setkk' )
fi
if [ -n "$gll" ]; then
    envs+=( 'cd '$gll'; setll' )
fi
if [ -n "$gmm" ]; then
    envs+=( 'cd '$gmm'; setmm' )
fi
if [ -n "$gnn" ]; then
    envs+=( 'cd '$gnn'; setnn' )
fi
if [ -n "$goo" ]; then
    envs+=( 'cd '$goo'; setoo' )
fi
if [ -n "$gpp" ]; then
    envs+=( 'cd '$gpp'; setpp' )
fi
if [ -n "$gqq" ]; then
    envs+=( 'cd '$gqq'; setqq' )
fi
if [ -n "$grr" ]; then
    envs+=( 'cd '$grr'; setrr' )
fi
if [ -n "$gss" ]; then
    envs+=( 'cd '$gss'; setss' )
fi
if [ -n "$gtt" ]; then
    envs+=( 'cd '$gtt'; settt' )
fi
if [ -n "$guu" ]; then
    envs+=( 'cd '$guu'; setuu' )
fi
if [ -n "$gvv" ]; then
    envs+=( 'cd '$gvv'; setvv' )
fi
if [ -n "$gww" ]; then
    envs+=( 'cd '$gww'; setww' )
fi
if [ -n "$gxx" ]; then
    envs+=( 'cd '$gxx'; setxx' )
fi
if [ -n "$gyy" ]; then
    envs+=( 'cd '$gyy'; setyy' )
fi
if [ -n "$gzz" ]; then
    envs+=( 'cd '$gzz'; setzz' )
fi

if [ -n "$ga" ]; then
    envs+=( 'cd '$ga'; seta' )
fi
if [ -n "$gb" ]; then
    envs+=( 'cd '$gb'; setb' )
fi
if [ -n "$gc" ]; then
    envs+=( 'cd '$gc'; setc' )
fi
if [ -n "$gd" ]; then
    envs+=( 'cd '$gd'; setd' )
fi
if [ -n "$ge" ]; then
    envs+=( 'cd '$ge'; sete' )
fi
if [ -n "$gf" ]; then
    envs+=( 'cd '$gf'; setf' )
fi
if [ -n "$gg" ]; then
    envs+=( 'cd '$gg'; setg' )
fi
if [ -n "$gh" ]; then
    envs+=( 'cd '$gh'; seth' )
fi
if [ -n "$gi" ]; then
    envs+=( 'cd '$gi'; seti' )
fi
if [ -n "$gj" ]; then
    envs+=( 'cd '$gj'; setj' )
fi
if [ -n "$gk" ]; then
    envs+=( 'cd '$gk'; setk' )
fi
if [ -n "$gl" ]; then
    envs+=( 'cd '$gl'; setl' )
fi
if [ -n "$gm" ]; then
    envs+=( 'cd '$gm'; setm' )
fi
if [ -n "$gn" ]; then
    envs+=( 'cd '$gn'; setn' )
fi
if [ -n "$go" ]; then
    envs+=( 'cd '$go'; seto' )
fi
if [ -n "$gp" ]; then
    envs+=( 'cd '$gp'; setp' )
fi
if [ -n "$gq" ]; then
    envs+=( 'cd '$gq'; setq' )
fi
if [ -n "$gr" ]; then
    envs+=( 'cd '$gr'; setr' )
fi
if [ -n "$gs" ]; then
    envs+=( 'cd '$gs'; sets' )
fi
if [ -n "$gt" ]; then
    envs+=( 'cd '$gt'; sett' )
fi
if [ -n "$gu" ]; then
    envs+=( 'cd '$gu'; setu' )
fi
if [ -n "$gv" ]; then
    envs+=( 'cd '$gv'; setv' )
fi
if [ -n "$gw" ]; then
    envs+=( 'cd '$gw'; setw' )
fi
if [ -n "$gx" ]; then
    envs+=( 'cd '$gx'; setx' )
fi
if [ -n "$gy" ]; then
    envs+=( 'cd '$gy'; sety' )
fi
if [ -n "$gz" ]; then
    envs+=( 'cd '$gz'; setz' )
fi

for env in "${envs[@]}"; do
    # translate absolute to home-relative paths
    echo $env | sed -e "s|${HOME}|~|"
done

echo ""
echo "gr"
