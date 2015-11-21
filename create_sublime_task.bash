#!/bin/bash

# # environments
home='/Users/ssteele'
assets="${home}/work/assets/phoenix_beta"
year=$(date +'%Y')
nn="${home}/ssteele/bin/subl -n"

# get task id
if [[ -n "$1" ]]; then
    task_id="$1"
else
    echo -n "Task ID: "
    read task_id
fi

# copy sublime boilerplate
cd ${home}/sublime_projects_tasks
cp 1_boilerplate.sublime-project "${task_id}.sublime-project"
cp 1_boilerplate.sublime-workspace "${task_id}.sublime-workspace"

# copy assets boilerplate
cd ${assets}/${year}
mkdir ${task_id}
cp -r 0_template/* ${task_id}

${nn} ${task_id}/0_notes.txt

exit