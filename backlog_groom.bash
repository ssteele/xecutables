#!/bin/bash


# environment vars (~/ssteele/bin/subl employed below)
dir='backlog-grooming'
tpl='1_boilerplate.txt'
ext='.txt'


# execution
cd $gdd/$dir

if [[ -n "$1" ]]; then
    issue="$1"
else
    echo -n "Issue: "
    read issue
fi

issue=`echo $issue | tr '[a-z]' '[A-Z]'`
issue="${issue}${ext}"

cp $tpl $issue

~/ssteele/bin/subl $issue