#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

bash_exports=''
bash_aliases=''

if [[ ! -z $bash_exports ]] || [[ ! -z $bash_aliases ]]; then
    source ${xec}/_bootstrap.bash
fi


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     IGNORE STUFF WHEN LISTING
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ -z "$1" ]]; then
    printf '\n   Not really ignoring anything here... try `ls` instead\n\n'
    exit
fi

# # Can't get code below to work
# for arg in "$@"; do
#   ignore="${ignore} ! -name '*.${arg}'"
# done
# find . -maxdepth 1$ignore

input_vars=$#

if [[ $input_vars == 1 ]]; then
    find . -maxdepth 1 ! -name "*.$1"
elif [[ $input_vars == 2 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2"
elif [[ $input_vars == 3 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3"
elif [[ $input_vars == 4 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4"
elif [[ $input_vars == 5 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5"
elif [[ $input_vars == 6 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6"
elif [[ $input_vars == 7 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6" ! -name "*.$7"
elif [[ $input_vars == 8 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6" ! -name "*.$7" ! -name "*.$8"
elif [[ $input_vars == 9 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6" ! -name "*.$7" ! -name "*.$8" ! -name "*.$9"
elif [[ $input_vars == 10 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6" ! -name "*.$7" ! -name "*.$8" ! -name "*.$9" ! -name "*.$10"
elif [[ $input_vars == 11 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6" ! -name "*.$7" ! -name "*.$8" ! -name "*.$9" ! -name "*.$10" ! -name "*.$11"
elif [[ $input_vars == 12 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6" ! -name "*.$7" ! -name "*.$8" ! -name "*.$9" ! -name "*.$10" ! -name "*.$11" ! -name "*.$12"
elif [[ $input_vars == 13 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6" ! -name "*.$7" ! -name "*.$8" ! -name "*.$9" ! -name "*.$10" ! -name "*.$11" ! -name "*.$12" ! -name "*.$13"
elif [[ $input_vars == 14 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6" ! -name "*.$7" ! -name "*.$8" ! -name "*.$9" ! -name "*.$10" ! -name "*.$11" ! -name "*.$12" ! -name "*.$13" ! -name "*.$14"
elif [[ $input_vars == 15 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6" ! -name "*.$7" ! -name "*.$8" ! -name "*.$9" ! -name "*.$10" ! -name "*.$11" ! -name "*.$12" ! -name "*.$13" ! -name "*.$14" ! -name "*.$15"
elif [[ $input_vars == 16 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6" ! -name "*.$7" ! -name "*.$8" ! -name "*.$9" ! -name "*.$10" ! -name "*.$11" ! -name "*.$12" ! -name "*.$13" ! -name "*.$14" ! -name "*.$15" ! -name "*.$16"
elif [[ $input_vars == 17 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6" ! -name "*.$7" ! -name "*.$8" ! -name "*.$9" ! -name "*.$10" ! -name "*.$11" ! -name "*.$12" ! -name "*.$13" ! -name "*.$14" ! -name "*.$15" ! -name "*.$16" ! -name "*.$17"
elif [[ $input_vars == 18 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6" ! -name "*.$7" ! -name "*.$8" ! -name "*.$9" ! -name "*.$10" ! -name "*.$11" ! -name "*.$12" ! -name "*.$13" ! -name "*.$14" ! -name "*.$15" ! -name "*.$16" ! -name "*.$17" ! -name "*.$18"
elif [[ $input_vars == 19 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6" ! -name "*.$7" ! -name "*.$8" ! -name "*.$9" ! -name "*.$10" ! -name "*.$11" ! -name "*.$12" ! -name "*.$13" ! -name "*.$14" ! -name "*.$15" ! -name "*.$16" ! -name "*.$17" ! -name "*.$18" ! -name "*.$19"
elif [[ $input_vars == 20 ]]; then
    find . -maxdepth 1 ! -name "*.$1" ! -name "*.$2" ! -name "*.$3" ! -name "*.$4" ! -name "*.$5" ! -name "*.$6" ! -name "*.$7" ! -name "*.$8" ! -name "*.$9" ! -name "*.$10" ! -name "*.$11" ! -name "*.$12" ! -name "*.$13" ! -name "*.$14" ! -name "*.$15" ! -name "*.$16" ! -name "*.$17" ! -name "*.$18" ! -name "*.$19" ! -name "*.$20"
else
    printf '\n   This function supports up to 20 command-line arguments...\n\n'
fi

exit
