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

# set vagrant
cd ${code}/app_${env}
setv

# set root
cd ${code}/${env}
setr

cd ${gr}/site

# set plugins
if (-d "wp-content" || -d "content") then

    cd ${gr}/site/*content*/plugins
    setp

else if (-d "assets") then

    cd ${gr}/site/*assets*/plugins
    setp

endif

cd ../themes
sett

# set parent theme
if (-d "skeleton") then

    cd skeleton
    sethh
    cd ..

else if (-d "*skeleton*") then

    cd *skeleton*
    sethh
    cd ..

endif

set found_home = "false"

# set home
if (-d $env) then

    set found_home = "true"
    cd $env
    seth

else if (-d $proj) then

    set found_home = "true"
    cd $proj
    seth

else
    echo 'Could not locate content directory';
endif

# set style
if ("true" == $found_home) then

    cd _

    if (-d 'scss') then

        cd scss
        setc

    else if (-d 'sass') then

        cd sass
        setc

    endif

endif

# set assets
if (-d "/Users/steele/projects/assets/${env}") then

    cd /Users/steele/projects/assets/${env}
    set year = `date "+%Y"`

    if (-d $year) then
        cd $year
    endif

    seta

endif

if ("true" == $found_home) then
    gh
else
    gt
endif

exit
