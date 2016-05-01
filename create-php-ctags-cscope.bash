#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports phoenix_assets_path
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
#     CREATE PHP CTAGS AND CSCOPE
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# remove existing
rm -fr .cscope.*
rm -fr .ctags

# create tags
ctags -f .ctags -R .

# create cscope
find `pwd` -name '*.php' > .cscope.files
cscope -ub -i .cscope.files -f .cscope.out

