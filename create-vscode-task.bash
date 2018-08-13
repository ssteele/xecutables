#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

source ${xec}/verify-bash-variables.bash

# validate all variables
# verify_bash_exports editor_path bs_core_assets_path bs_core_documentation_path
verify_bash_exports editor_path sa_assets_path sa_main_assets_path sa_nest_assets_path
bash_exports_valid=$?

# validate all aliases
verify_bash_aliases mm
bash_aliases_valid=$?

if [[ 0 = ${bash_exports_valid} || 0 = ${bash_aliases_valid} ]]; then
    exit
fi

shopt -s expand_aliases
source ~/.bashrc


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     CREATE VSCODE TASK
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

echo ''
echo 'I should hook this up some day'
echo ''
exit

boilerplate="sa-nest"
assets_path="${sa_nest_assets_path}"

# get task id
if [[ -n "$1" ]]; then
    task_id="$1"
else
    echo 'No task ID passed in by create_task.bash'
    exit
fi

if echo ${task_id} | grep -qE '(BE|FE|GN|OM|TA)\d+$'; then

    # copy sublime boilerplate
    cd ${editor_path}/sublime-projects-tasks
    cp boilerplates/${boilerplate}.sublime-project "${task_id}.sublime-project"
    cp boilerplates/${boilerplate}.sublime-workspace "${task_id}.sublime-workspace"
    ${xec}/rename-sublime-project.pl ${task_id}

    # get current year (folder)
    year=$(date +'%Y')

    # copy assets boilerplate
    cd ${assets_path}/${year}
    mkdir ${task_id}
    cp -r ${sa_assets_path}/task-template/* ${task_id}

    ${xec}/sublime-task.pl ${task_id}
    # n ${bs_core_documentation_path}/proc/dev-update.txt ${task_id}/_notes.txt
    n ${task_id}/_notes.txt

else

    # copy sublime boilerplate
    cd ${editor_path}/sublime-projects-tasks
    cp boilerplates/global.sublime-project "${task_id}.sublime-project"
    cp boilerplates/global.sublime-workspace "${task_id}.sublime-workspace"

    ${xec}/rename-sublime-project.pl ${task_id}
    ${xec}/sublime-task.pl ${task_id}

fi

exit