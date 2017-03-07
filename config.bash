#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT (disabled because none of this will be available at this point)
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# pass


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     CONFIGURE TERMINAL ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ -n "$1" ]]; then
    input="$1"
else
    echo -n "Environment: "
    read input
fi

echo ''

rm -fr ~/.bashrc
cp ~/bash/config/${input}.bashrc ~/.bashrc

rm -fr ~/.vimrc
cp ~/.vim/config/${input}.vimrc ~/.vimrc

echo 'Be sure to:'
echo 'source ~/.bashrc'
echo ''
