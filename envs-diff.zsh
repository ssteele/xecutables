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
    envFile='_env.bash'                                             # @todo: _env.zsh
else
    envFile="$1"
fi

envsCopy > .tmp
diff ${envFile} .tmp
rm -fr .tmp
