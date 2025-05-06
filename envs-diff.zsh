#!/bin/zsh


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

zsh_exports=('xec')

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
#     COPY SHELL ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

envFile=''
if [[ -z "$1" ]]; then
    envFile='_env.zsh'
    if [ ! -f ./_env.zsh ]; then
        echo ''
        echo 'mv _env.bash _env.zsh'
        echo ''
        envFile='_env.bash'
    fi
else
    envFile="$1"
fi

${xec}/envs-copy.zsh > ${HOME}/_env
diff ${envFile} ${HOME}/_env
echo ''
