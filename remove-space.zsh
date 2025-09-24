#!/bin/zsh


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

zsh_exports=()

source_bootstrap=false
for e in "${zsh_exports[@]}"; do
    if [[ -z ${(P)e} ]]; then
        source_bootstrap=true
    fi
done

if $source_bootstrap; then
    source ${xec}/_bootstrap.zsh
fi


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     REMOVE EMPTY SPACES FOR ALL NESTED FILES
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ -n "$1" ]]; then
    # check if $1 is a file type or contains file paths
    if [[ "$1" =~ ^[^.]*$ ]] || [[ "$1" =~ ^\.[a-zA-Z0-9]+$ ]]; then
        # it's a file type (no dots, or starts with single dot followed by characters)
        fileType="$1"
        fileType="${fileType#.}"                                    # strip preceding dot if it exists
        find . -type f -name "*.${fileType}" -exec perl -i -pe 's/^\s+$/\n/' {} +
    else
        # it's a list of files (either space-delimited in $1 or multiple arguments)
        if [[ $# -eq 1 ]]; then
            # single argument with space-delimited files
            files=("${(@s/ /)1}")                                   # split $1 on spaces into array
        else
            # multiple arguments, each is a file
            files=("$@")                                            # use all arguments as array
        fi
        echo -n 'files: '; echo $files

        # process each file in the list
        for file in "${files[@]}"; do
            if [[ -f "$file" ]]; then
                perl -i -pe 's/^\s+$/\n/' "$file"
            else
                echo "Warning: File '$file' not found or is not a regular file"
            fi
        done
    fi
else
    find . -type f -exec perl -i -pe 's/^\s+$/\n/' {} +
fi
