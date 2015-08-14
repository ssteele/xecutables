#!/bin/bash


# Determine project
if [[ -n "$1" ]]; then
    url="$1"
else
    echo -n "URL file: "
    read url
fi


# Build the path to the url flat file
path="${ll}/0_urls/${url}"


# Filter out commented out URLs
$xec/www.pl $path


# Open links
/usr/bin/open -a /Applications/Google\ Chrome.app/ `/bin/cat /Users/ssteele/url_temp.txt`


# Clean up
rm -fr /Users/ssteele/url_temp.txt

exit
