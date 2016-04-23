#!/bin/bash

# environments
home='/Users/ssteele'
assets="${home}/work/assets/phoenix_beta"
year=$(date +'%Y')

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
cp -r ../task-template/* ${task_id}

if echo "$EDITOR" | grep -q 'vim'; then
    $xec/create_vim_task.bash ${task_id}
elif echo "$EDITOR" | grep -q 'subl'; then
    $xec/create_sublime_task.bash ${task_id}
fi

exit
