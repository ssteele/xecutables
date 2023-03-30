#!/bin/zsh


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     VERIFY ENVIRONMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

zsh_exports=''
zsh_aliases=''

if [[ ! -z $zsh_exports ]] || [[ ! -z $zsh_aliases ]]; then
    source ${xec}/_bootstrap.zsh
fi


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     JOIN ACK RESULTS LIST (ONE-PER-LINE) ONTO A SINGLE LINE
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ignoreCase=false

if [[ -n "$1" ]]; then
    while [ -n "$1" ]; do
        case "$1" in
            -i) ignoreCase=true ;;
            *) searchTerm="$1" ;;
        esac
        shift
    done
else
    echo ''
    echo "Please feed me lines of input"
    echo ''
    exit
fi

if $ignoreCase; then
    output=`ack -li ${searchTerm} | tr '\n' ' '`
else
    output=`ack -l ${searchTerm} | tr '\n' ' '`
fi

echo ${output}
echo ${output} | pbcopy
