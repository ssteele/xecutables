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

        # strip preceding dot if it exists
        fileType="${fileType#.}"

        # strip trailing spaces for all files of type
        find . -type f -name "*.${fileType}" -exec perl -i -pe 's/[ \t]+$//' {} +
    else
        # it's a list of files as multiple arguments
        files=("$@")

        # process each file in the list
        for file in "${files[@]}"; do
            if [[ -f "$file" ]]; then
                # strip trailing spaces for all specified files
                perl -i -pe 's/[ \t]+$//' "$file"
            else
                echo "Warning: File '$file' not found or is not a regular file"
            fi
        done
    fi
else
    # strip trailing spaces for all files in current/nested directories
    find . -type f -exec perl -i -pe 's/[ \t]+$//' {} +
fi
