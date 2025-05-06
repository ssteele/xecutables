#!/bin/zsh


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

zsh_exports=('ss')

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
#     CUSTOM WHICH COMMAND
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ -n "$1" ]]; then
    input="$1"
else
    echo -n "Command: "
    read input
fi

echo ''
grep ${input} ~/.zshrc
grep -r ${input} ${ss}/zsh

echo ''
alias ${input}
