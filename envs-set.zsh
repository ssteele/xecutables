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
#     SET SHELL NAVIGATION VARIABLES
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

doSet=false

if [[ -f ./_env.zsh || -f ./_env.bash ]]; then
    isZshEnvFile=false
    if [ -f ./_env.zsh ]; then
        isZshEnvFile=true
    fi

    if [[ `alias gA 2>/dev/null` ]]; then
        envsDiff=$(${xec}/envs-diff.zsh ${gA}/_env.zsh)
        if [[ -n "${envsDiff}" ]]; then
            echo ''
            echo ${envsDiff}
            echo 'There are unsaved changes with the current environment'
            echo ''
        fi
    else
        envsReport=$(${xec}/envs-report.zsh)
        if [[ -n "${envsReport}" ]]; then
            echo ''
            echo ${envsReport}
            echo 'Overwrite ^^ current environment? y/n'
            echo ''

            read doOverwrite
            if [[ "${doOverwrite}" = 'y' || "${doOverwrite}" = 'Y' ]]; then
                doSet=true
            fi
        else
            doSet=true
        fi
    fi

    if [ "${doSet}" = true ] ; then
        source ${xec}/envs-unset.zsh

        if [ "${isZshEnvFile}" = true ] ; then
            source ./_env.zsh
        else
            source ./_env.bash
        fi 

        echo ''
        echo 'Environment set'
        echo ''
    fi 
else
    echo ''
    echo 'Please add `_env.zsh`'
    echo ''
fi
