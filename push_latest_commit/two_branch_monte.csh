#!/bin/csh

set current_branch = $argv[1]
set merge_branch = $argv[2]

rm -fr 0_temp

# Switch to branch that we're about to merge to
git checkout $merge_branch

git cherry-pick $current_branch
git push

# Switch back to original branch
git checkout $current_branch

exit