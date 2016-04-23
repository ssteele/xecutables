#!/bin/bash


# remove existing
rm -fr .cscope.*
rm -fr .ctags

# create tags
ctags -f .ctags -R .

# create cscope
find `pwd` -name '*.php' > .cscope.files
cscope -ub -i .cscope.files -f .cscope.out

