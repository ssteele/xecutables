#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

bash_exports='ss'
bash_aliases=''

if [[ ! -z $bash_exports ]] || [[ ! -z $bash_aliases ]]; then
    source ${xec}/_bootstrap.bash
fi


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
/usr/bin/open -a /Applications/Google\ Chrome.app/ `/bin/cat ~/url_temp.txt`

# Clean up
rm -fr ~/url_temp.txt

exit
