#!/bin/tcsh

envs=(ga gaa gb gbb gc gcc gd gdd ge gee gf gff gg ggg gh ghh gi gii gj gjj gk gkk gl gll gm gmm gn gnn go goo gp gpp gq gqq gr grr gs gss gt gtt gu guu gv gvv gw gww gx gxx gy gyy gz gzz)

for env in "${envs[@]}"; do

    if [ -n "${!env}" ]; then

        unalias $env
        unset $env
    fi

done

echo ""
echo "    ...environment variables cleared"
echo ""
