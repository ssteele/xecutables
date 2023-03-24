#!/bin/zsh


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

zsh_exports=''
zsh_aliases=''

if [[ ! -z $zsh_exports ]] || [[ ! -z $zsh_aliases ]]; then
    source ${xec}/_bootstrap.zsh
fi


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     REPORT SHELL NAVIGATION VARIABLES
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

envs=()

echo ''

if [ -n "$gAA" ]; then
    envs+=( 'AA: '$gAA )
fi
if [ -n "$gBB" ]; then
    envs+=( 'BB: '$gBB )
fi
if [ -n "$gCC" ]; then
    envs+=( 'CC: '$gCC )
fi
if [ -n "$gDD" ]; then
    envs+=( 'DD: '$gDD )
fi
if [ -n "$gEE" ]; then
    envs+=( 'EE: '$gEE )
fi
if [ -n "$gFF" ]; then
    envs+=( 'FF: '$gFF )
fi
if [ -n "$gGG" ]; then
    envs+=( 'GG: '$gGG )
fi
if [ -n "$gHH" ]; then
    envs+=( 'HH: '$gHH )
fi
if [ -n "$gII" ]; then
    envs+=( 'II: '$gII )
fi
if [ -n "$gJJ" ]; then
    envs+=( 'JJ: '$gJJ )
fi
if [ -n "$gKK" ]; then
    envs+=( 'KK: '$gKK )
fi
if [ -n "$gLL" ]; then
    envs+=( 'LL: '$gLL )
fi
if [ -n "$gMM" ]; then
    envs+=( 'MM: '$gMM )
fi
if [ -n "$gNN" ]; then
    envs+=( 'NN: '$gNN )
fi
if [ -n "$gOO" ]; then
    envs+=( 'OO: '$gOO )
fi
if [ -n "$gPP" ]; then
    envs+=( 'PP: '$gPP )
fi
if [ -n "$gQQ" ]; then
    envs+=( 'QQ: '$gQQ )
fi
if [ -n "$gRR" ]; then
    envs+=( 'RR: '$gRR )
fi
if [ -n "$gSS" ]; then
    envs+=( 'SS: '$gSS )
fi
if [ -n "$gTT" ]; then
    envs+=( 'TT: '$gTT )
fi
if [ -n "$gUU" ]; then
    envs+=( 'UU: '$gUU )
fi
if [ -n "$gVV" ]; then
    envs+=( 'VV: '$gVV )
fi
if [ -n "$gWW" ]; then
    envs+=( 'WW: '$gWW )
fi
if [ -n "$gXX" ]; then
    envs+=( 'XX: '$gXX )
fi
if [ -n "$gYY" ]; then
    envs+=( 'YY: '$gYY )
fi
if [ -n "$gZZ" ]; then
    envs+=( 'ZZ: '$gZZ )
fi

if [ -n "$gA" ]; then
    envs+=( 'A: '$gA )
fi
if [ -n "$gB" ]; then
    envs+=( 'B: '$gB )
fi
if [ -n "$gC" ]; then
    envs+=( 'C: '$gC )
fi
if [ -n "$gD" ]; then
    envs+=( 'D: '$gD )
fi
if [ -n "$gE" ]; then
    envs+=( 'E: '$gE )
fi
if [ -n "$gF" ]; then
    envs+=( 'F: '$gF )
fi
if [ -n "$gG" ]; then
    envs+=( 'G: '$gG )
fi
if [ -n "$gH" ]; then
    envs+=( 'H: '$gH )
fi
if [ -n "$gI" ]; then
    envs+=( 'I: '$gI )
fi
if [ -n "$gJ" ]; then
    envs+=( 'J: '$gJ )
fi
if [ -n "$gK" ]; then
    envs+=( 'K: '$gK )
fi
if [ -n "$gL" ]; then
    envs+=( 'L: '$gL )
fi
if [ -n "$gM" ]; then
    envs+=( 'M: '$gM )
fi
if [ -n "$gN" ]; then
    envs+=( 'N: '$gN )
fi
if [ -n "$gO" ]; then
    envs+=( 'O: '$gO )
fi
if [ -n "$gP" ]; then
    envs+=( 'P: '$gP )
fi
if [ -n "$gQ" ]; then
    envs+=( 'Q: '$gQ )
fi
if [ -n "$gR" ]; then
    envs+=( 'R: '$gR )
fi
if [ -n "$gS" ]; then
    envs+=( 'S: '$gS )
fi
if [ -n "$gT" ]; then
    envs+=( 'T: '$gT )
fi
if [ -n "$gU" ]; then
    envs+=( 'U: '$gU )
fi
if [ -n "$gV" ]; then
    envs+=( 'V: '$gV )
fi
if [ -n "$gW" ]; then
    envs+=( 'W: '$gW )
fi
if [ -n "$gX" ]; then
    envs+=( 'X: '$gX )
fi
if [ -n "$gY" ]; then
    envs+=( 'Y: '$gY )
fi
if [ -n "$gZ" ]; then
    envs+=( 'Z: '$gZ )
fi

if [ -n "$gaa" ]; then
    envs+=( 'aa: '$gaa )
fi
if [ -n "$gbb" ]; then
    envs+=( 'bb: '$gbb )
fi
if [ -n "$gcc" ]; then
    envs+=( 'cc: '$gcc )
fi
if [ -n "$gdd" ]; then
    envs+=( 'dd: '$gdd )
fi
if [ -n "$gee" ]; then
    envs+=( 'ee: '$gee )
fi
if [ -n "$gff" ]; then
    envs+=( 'ff: '$gff )
fi
if [ -n "$ggg" ]; then
    envs+=( 'gg: '$ggg )
fi
if [ -n "$ghh" ]; then
    envs+=( 'hh: '$ghh )
fi
if [ -n "$gii" ]; then
    envs+=( 'ii: '$gii )
fi
if [ -n "$gjj" ]; then
    envs+=( 'jj: '$gjj )
fi
if [ -n "$gkk" ]; then
    envs+=( 'kk: '$gkk )
fi
if [ -n "$gll" ]; then
    envs+=( 'll: '$gll )
fi
if [ -n "$gmm" ]; then
    envs+=( 'mm: '$gmm )
fi
if [ -n "$gnn" ]; then
    envs+=( 'nn: '$gnn )
fi
if [ -n "$goo" ]; then
    envs+=( 'oo: '$goo )
fi
if [ -n "$gpp" ]; then
    envs+=( 'pp: '$gpp )
fi
if [ -n "$gqq" ]; then
    envs+=( 'qq: '$gqq )
fi
if [ -n "$grr" ]; then
    envs+=( 'rr: '$grr )
fi
if [ -n "$gss" ]; then
    envs+=( 'ss: '$gss )
fi
if [ -n "$gtt" ]; then
    envs+=( 'tt: '$gtt )
fi
if [ -n "$guu" ]; then
    envs+=( 'uu: '$guu )
fi
if [ -n "$gvv" ]; then
    envs+=( 'vv: '$gvv )
fi
if [ -n "$gww" ]; then
    envs+=( 'ww: '$gww )
fi
if [ -n "$gxx" ]; then
    envs+=( 'xx: '$gxx )
fi
if [ -n "$gyy" ]; then
    envs+=( 'yy: '$gyy )
fi
if [ -n "$gzz" ]; then
    envs+=( 'zz: '$gzz )
fi

if [ -n "$ga" ]; then
    envs+=( 'a: '$ga )
fi
if [ -n "$gb" ]; then
    envs+=( 'b: '$gb )
fi
if [ -n "$gc" ]; then
    envs+=( 'c: '$gc )
fi
if [ -n "$gd" ]; then
    envs+=( 'd: '$gd )
fi
if [ -n "$ge" ]; then
    envs+=( 'e: '$ge )
fi
if [ -n "$gf" ]; then
    envs+=( 'f: '$gf )
fi
if [ -n "$gg" ]; then
    envs+=( 'g: '$gg )
fi
if [ -n "$gh" ]; then
    envs+=( 'h: '$gh )
fi
if [ -n "$gi" ]; then
    envs+=( 'i: '$gi )
fi
if [ -n "$gj" ]; then
    envs+=( 'j: '$gj )
fi
if [ -n "$gk" ]; then
    envs+=( 'k: '$gk )
fi
if [ -n "$gl" ]; then
    envs+=( 'l: '$gl )
fi
if [ -n "$gm" ]; then
    envs+=( 'm: '$gm )
fi
if [ -n "$gn" ]; then
    envs+=( 'n: '$gn )
fi
if [ -n "$go" ]; then
    envs+=( 'o: '$go )
fi
if [ -n "$gp" ]; then
    envs+=( 'p: '$gp )
fi
if [ -n "$gq" ]; then
    envs+=( 'q: '$gq )
fi
if [ -n "$gr" ]; then
    envs+=( 'r: '$gr )
fi
if [ -n "$gs" ]; then
    envs+=( 's: '$gs )
fi
if [ -n "$gt" ]; then
    envs+=( 't: '$gt )
fi
if [ -n "$gu" ]; then
    envs+=( 'u: '$gu )
fi
if [ -n "$gv" ]; then
    envs+=( 'v: '$gv )
fi
if [ -n "$gw" ]; then
    envs+=( 'w: '$gw )
fi
if [ -n "$gx" ]; then
    envs+=( 'x: '$gx )
fi
if [ -n "$gy" ]; then
    envs+=( 'y: '$gy )
fi
if [ -n "$gz" ]; then
    envs+=( 'z: '$gz )
fi

for env in "${envs[@]}"; do
    echo $env | sed -e "s|${HOME}|~|"
done

echo ''