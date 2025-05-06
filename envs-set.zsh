#!/bin/zsh


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

zsh_exports=()

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
#     SET SHELL NAVIGATION VARIABLES
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

doSet=false

if [[ -f ./_env.zsh || -f ./_env.bash ]]; then
    isZshEnvFile=false
    if [ -f ./_env.zsh ]; then
        isZshEnvFile=true
    fi

    if [[ `alias gA 2>/dev/null` ]]; then
        oldZshEnvFile=false
        if [ -f ${gA}/_env.zsh ]; then
            oldZshEnvFile="${gA}/_env.zsh"
        elif [ -f ${gA}/_env.bash ]; then
            oldZshEnvFile="${gA}/_env.bash"
        fi

        if [ "${oldZshEnvFile}" != false ] ; then
            envsDiff=$(${xec}/envs-diff.zsh ${oldZshEnvFile})
            if [[ -n "${envsDiff}" ]]; then
                echo ''
                echo ${envsDiff}
                echo 'There are unsaved changes in the current environment'
                echo ''
            else
                doSet=true
            fi
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

        echo '    ...new environment set'
        echo ''
    fi 
else
    echo ''
    echo 'Please add `_env.zsh`'
    echo ''
fi
