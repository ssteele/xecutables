#!/bin/bash


# environment vars (~/ssteele/bin/subl employed below)
dir='backlog-grooming'
tpl='0_template.txt'
ext='.txt'


# execution
cd $gd/$dir

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