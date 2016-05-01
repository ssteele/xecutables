#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports ss
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
#     OPEN LISTED URLS IN A BROWSER
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Determine project
if [[ -n "$1" ]]; then
    url="$1"
else
    echo -n "URL file: "
    read url
fi

# Build the path to the url flat file
path="${ss}/urls/${url}"

# Filter out commented out URLs
${xec}/www.pl ${path}

# Open links
/usr/bin/open -a /Applications/Google\ Chrome.app/ `/bin/cat /Users/ssteele/url_temp.txt`

# Clean up
rm -fr /Users/ssteele/url_temp.txt

exit
