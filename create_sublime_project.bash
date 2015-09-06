#!/bin/bash

if [[ -n "$1" ]]; then
    project_id="$1"
else
    echo -n "project ID: "
    read project_id
fi

cd ~/sublime_projects

cp 1_boilerplate.sublime-project "${project_id}.sublime-project"
cp 1_boilerplate.sublime-workspace "${project_id}.sublime-workspace"

exit