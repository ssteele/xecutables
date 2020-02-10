#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

bash_exports=''
bash_aliases='create_vim_task create_sublime_task'

if [[ ! -z $bash_exports ]] || [[ ! -z $bash_aliases ]]; then
    source ${xec}/_bootstrap.bash
fi


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     CREATE TASK
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# get task id
if [[ -n "$1" ]]; then
    task_id="$1"
else
    echo -n "Task ID: "
    read task_id
fi

if echo "$EDITOR" | grep -q 'vim'; then
    create_vim_task ${task_id}
elif echo "$EDITOR" | grep -q 'subl'; then
    create_sublime_task ${task_id}
elif echo "$EDITOR" | grep -q 'code'; then
    create_vscode_task ${task_id}
fi

exit
