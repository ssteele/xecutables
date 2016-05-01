#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports editor_path
bash_exports_valid=$?

# validate all aliases
verify_bash_aliases nn
bash_aliases_valid=$?

if [[ 0 = ${bash_exports_valid} || 0 = ${bash_aliases_valid} ]]; then
    exit
fi

shopt -s expand_aliases
source ~/.bashrc


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     CREATE SUBLIME TASK
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# get task id
if [[ -n "$1" ]]; then
    task_id="$1"
else
    echo 'No task ID passed in by create_task.bash'
    exit
fi

# copy sublime boilerplate
cd ${editor_path}/sublime_projects_tasks
cp 1_boilerplate.sublime-project "${task_id}.sublime-project"
cp 1_boilerplate.sublime-workspace "${task_id}.sublime-workspace"

nn ${task_id}/0_notes.txt

exit
