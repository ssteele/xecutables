#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports gR gDD
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
#     REASSOCIATE VM
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

vagrantCommandPath='/usr/local/bin/vagrant'
virtualboxFolderPath="${gR}/.vagrant/machines/default/virtualbox"
virtualboxConfigPath="${gDD}/conf/virtualbox"

cd ${gR}

if [[ ! -f "${virtualboxFolderPath}/private_key" ]]; then
    # run vagrant status to create nonexistent directory
    ${vagrantCommandPath} status

    # copy config in if private_key nonexistent
    cp ${virtualboxConfigPath}/* ${virtualboxFolderPath}

    echo ''
    echo '...reassociating VM with VirtualBox'
    echo ''
fi

${vagrantCommandPath} status

exit
