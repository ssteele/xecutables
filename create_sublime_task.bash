#!/bin/bash

# environments
home='/Users/ssteele'
cmd_open_editor="${home}/ssteele/bin/subl -n"

# get task id
if [[ -n "$1" ]]; then
    task_id="$1"
else
    echo 'No task ID passed in by create_task.bash'
    exit
fi

# copy sublime boilerplate
cd ${home}/sublime_projects_tasks
cp 1_boilerplate.sublime-project "${task_id}.sublime-project"
cp 1_boilerplate.sublime-workspace "${task_id}.sublime-workspace"

${cmd_open_editor} ${task_id}/0_notes.txt

exit
