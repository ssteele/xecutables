#!/bin/zsh

source ~/.zshrc


# return 1 if passed in strings are exported variables
# ...0 otherwise
function verify_zsh_exports {
    valid=1

    for var in "$@"; do
        if [[ ! -v ${var} ]]; then
            echo "    \$${var} has not been exported"
            valid=0
        fi
    done

    return ${valid}
}


# return 1 if passed in strings are properly aliased
# ...0 otherwise
function verify_zsh_aliases {
    valid=1

    for var in "$@"; do
        if [[ ! `alias ${var} 2>/dev/null` ]]; then
            echo "   '${var}' has not been properly aliased"
            valid=0
        fi
    done

    return ${valid}
}
