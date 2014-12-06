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

cd ${code}/app_${env}
setv

cd ${code}/${env}
setr

cd ${gr}/site

if (-d "wp-content" || -d "content") then

    cd ${gr}/site/*content*/plugins
    setp

else if (-d "assets") then

    cd ${gr}/site/*assets*/plugins
    setp

endif

cd ../themes

if (-d "skeleton") then

    cd skeleton
    sett
    cd ..

else if (-d "*skeleton*") then

    cd *skeleton*
    sett
    cd ..

endif

set found_home = "false"

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

if ("true" == $found_home) then

    cd _

    if (-d 'scss') then

        cd scss
        setc

    else if (-d 'sass') then

        cd sass
        setc

    endif

    gh

endif

exit
