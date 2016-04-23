#!/bin/bash

# environments
cmd_open_editor='open -a MacVim'

# get task id
if [[ -n "$1" ]]; then
    task_id="$1"
else
    echo 'No task ID passed in by create_task.bash'
    exit
fi

${cmd_open_editor} ${task_id}/0_notes.txt

exit
