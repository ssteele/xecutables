#!/bin/bash

# environments
home='/Users/ssteele'
assets="${home}/work/assets/phoenix_beta"
year=$(date +'%Y')
cmd_open_editor='open -a MacVim'

# get task id
if [[ -n "$1" ]]; then
    task_id="$1"
else
    echo -n "Task ID: "
    read task_id
fi

# copy assets boilerplate
cd ${assets}/${year}
mkdir ${task_id}
cp -r 0_template/* ${task_id}

${cmd_open_editor} ${task_id}/0_notes.txt

exit
