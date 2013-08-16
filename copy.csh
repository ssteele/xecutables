#!/bin/csh

if ($#argv == 0) then
	set cmd = 'pwd'
else
	set cmd = $argv[1]
endif

$cmd | pbcopy

exit