#!/bin/tcsh

# called by implementation?
if ($#argv > 0) then

    if ($argv[1] == 'implementation') then
        set core = 0
    endif

else
    set core = 1
endif

# hardcode core project
set env = 'sbp_dashboard_core/'

# remove all slashes
set env = `echo $env | sed "s/[/]//g"`

# extract the project name
set proj = `echo $env | sed "s/_.*//"`

# set root
cd ${code}/${env}
if ($core) then
    setr
endif
setrr

# set "content"
cd ${grr}/dashboard-server/dashboard-server-resources/src/main/
if ($core) then
    setm
endif
setmm

# set view
cd ${gmm}/webapp/WEB-INF/jsp/views
if ($core) then
    setv
endif
setvv

# set tags
cd ${gmm}/webapp/WEB-INF/tags
if ($core) then
    sett
endif
settt

# set style
cd ${gmm}/webapp//static/css
if ($core) then
    setc
endif
setcc

# set assets
if (-d "/Users/steele/projects/assets/${env}") then

    cd /Users/steele/projects/assets/${env}
    set year = `date "+%Y"`

    if (-d $year) then
        cd $year
    endif

    if ($core) then
        seta
    endif
    setaa

endif

gv

exit
