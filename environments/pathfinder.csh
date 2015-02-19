#!/bin/tcsh

if ($#argv != 1) then

    echo "Which project? "
    set env = "$<"

else
    set env = $argv[1]
endif

# remove all slashes
set env = `echo $env | sed "s/[/]//g"`

# extract the project name
set proj = `echo $env | sed "s/_.*//"`

# set root
cd ${code}/${env}
setr

# set "content"
cd ${gr}/dashboard/dashboard-server/src/main/
setm

# set view
cd ${gm}/webapp/WEB-INF/jsp/views
setv

# set tags
cd ${gm}/webapp/WEB-INF/tags
sett

# set style
cd ${gm}/webapp//static/css
setc

# set assets
if (-d "/Users/steele/projects/assets/${env}") then

    cd /Users/steele/projects/assets/${env}
    set year = `date "+%Y"`

    if (-d $year) then
        cd $year
    endif

    seta

endif

# set core
sete_pathfinder_core implementation

exit
