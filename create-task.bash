#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
verify_bash_exports phoenix_assets_path
bash_exports_valid=$?

# validate all aliases
verify_bash_aliases create_task_vim create_task_sublime
bash_aliases_valid=$?

if [[ 0 = ${bash_exports_valid} || 0 = ${bash_aliases_valid} ]]; then
    exit
fi

shopt -s expand_aliases
source ~/.bashrc


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     CREATE TASK
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# get current year (folder)
year=$(date +'%Y')

# get task id
if [[ -n "$1" ]]; then
    task_id="$1"
else
    echo -n "Task ID: "
    read task_id
fi

# copy assets boilerplate
cd ${phoenix_assets_path}/${year}
mkdir ${task_id}
cp -r ../task-template/* ${task_id}

if echo "$EDITOR" | grep -q 'vim'; then
    create_task_vim ${task_id}
elif echo "$EDITOR" | grep -q 'subl'; then
    create_task_sublime ${task_id}
fi

exit
