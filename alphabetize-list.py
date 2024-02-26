#!/usr/bin/python

# sort unsorted.txt > ~/.temp                                       # sort: many sorting options available via cli
# uniq sorted.txt ~/.temp                                           # dedupe only

import sys, subprocess

if len(sys.argv) >= 2:

    filename = sys.argv[1]
    command = 'sort ' + filename + ' > sorted.txt'

else :
    command = 'sort unsorted.txt > sorted.txt'

subprocess.run('pbcopy', text = True, input = command)
print(command)
