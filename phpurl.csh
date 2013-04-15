#!/bin/csh

set file = $argv[1]
/global/xecutables/phpurl.pl `pwd -P` $file

exit
