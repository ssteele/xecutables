#!/bin/csh

set file = $argv[1]
$xec/phpurl.pl `pwd -P` $file

exit
