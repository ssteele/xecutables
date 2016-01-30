#!/bin/bash

# environments

# get project id
if [[ -n "$1" ]]; then
    project_id="$1"
else
    echo -n "project ID: "
    read project_id
fi

exit
