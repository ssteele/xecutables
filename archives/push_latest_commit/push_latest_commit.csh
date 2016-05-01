#!/bin/csh

# Collect user arguments
if ($#argv != 1) then
	echo ''
	echo -n 'Push to current branch? '
	set read_input = "$<"
	if ($read_input != 'y') then
		echo '	...nothing pushed'
		echo ''
		exit
	endif
	set merge_branch = 'shs_current_shs'
else
	set merge_branch = $argv[1]
endif

# Figure out current branch (for now, hardcode it)
git status > 0_temp
$xec/push_latest_commit/return_current_branch.pl $merge_branch $xec `pwd`

exit