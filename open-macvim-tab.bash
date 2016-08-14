#!/bin/bash

lastArg="${@: -1}"

if [[ $lastArg =~ ^-?[0-9]+$ ]]; then
    fileNames=${@:1:$#-1}
    mvim --servername VIM${lastArg} --remote-tab ${fileNames}
elif [[ "$vimwin" ]]; then
    fileNames=${@:1}                                                # export vimwin=1
    mvim --servername VIM${vimwin} --remote-tab ${fileNames}
else
    fileNames="$@"
    mvim --remote-tab-silent ${fileNames}
fi
