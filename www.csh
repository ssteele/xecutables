#!/bin/tcsh


# Determine project
if ($#argv != 1) then
    echo "Which project? "
    set proj = "$<"
else
    set proj = $argv[1]
endif


# Build the path to the url flat file
set path = ${ll}/0_urls/${proj}


# Filter out commented out URLs
$xec/www.pl $path


# Open links
/usr/bin/open -a /Applications/Google\ Chrome.app/ `/bin/cat /Users/steele/url_temp.txt`


# Clean up
rm -fr /Users/steele/url_temp.txt

exit