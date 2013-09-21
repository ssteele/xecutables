#!/bin/csh

# Collect user arguments
if ($#argv != 1) then
	echo ''
	echo 'Please supply the branch to be pushed...'
	echo ''
	exit
endif

set merge_branch = $argv[1]

# Figure out current branch (for now, hardcode it)
git status > 0_temp
$xec/push_latest_commit/return_current_branch.pl $merge_branch $xec `pwd`

exit