#!/bin/bash


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     CREATE PHP CTAGS AND CSCOPE
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# remove existing
rm -fr .cscope.*
rm -fr .tags

# create tags
ctags -f .tags -R .

# create cscope
find `pwd` -name '*.php' > .cscope.files
cscope -ub -i .cscope.files -f .cscope.out

