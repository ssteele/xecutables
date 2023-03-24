#!/bin/zsh


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     BOOTSTRAP/VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-zsh-variables.zsh

# validate all variables
verify_zsh_exports $zsh_exports
zsh_exports_valid=$?

# validate all aliases
verify_zsh_aliases $zsh_aliases
zsh_aliases_valid=$?

if [[ 0 = ${zsh_exports_valid} || 0 = ${zsh_aliases_valid} ]]; then
    exit
fi

setopt aliases
source ~/.zshrc
