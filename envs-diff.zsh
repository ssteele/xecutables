#!/bin/zsh


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

zsh_exports=''
zsh_aliases='envsCopy'

if [[ ! -z $zsh_exports ]] || [[ ! -z $zsh_aliases ]]; then
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

envsCopy > ${HOME}/_env
diff ${envFile} ${HOME}/_env
