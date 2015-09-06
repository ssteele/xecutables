#!/bin/bash

cd $ll/sites/phoenix_beta

find . -name "*.php" > cscope.files
cscope -q -R -b -i cscope.files

exit