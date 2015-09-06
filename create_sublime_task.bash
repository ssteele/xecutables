#!/bin/bash

if [[ -n "$1" ]]; then
    task_id="$1"
else
    echo -n "Task ID: "
    read task_id
fi

cd ~/sublime_projects_tasks

cp 1_boilerplate.sublime-project "${task_id}.sublime-project"
cp 1_boilerplate.sublime-workspace "${task_id}.sublime-workspace"

exit