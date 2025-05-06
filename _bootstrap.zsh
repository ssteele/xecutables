#!/bin/zsh


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     BOOTSTRAP/VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-zsh-variables.zsh

# validate all exports
verify_zsh_exports $zsh_exports
zsh_exports_valid=$?

# @todo: remove this block
# validate all aliases
verify_zsh_aliases $zsh_aliases
zsh_aliases_valid=$?

# @todo: remove aliases var
if [[ 1 = ${zsh_exports_valid} && 1 = ${zsh_aliases_valid} ]]; then
    setopt aliases
    source ~/.zshrc
fi
