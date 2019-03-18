#!/usr/bin/python

import sys, subprocess

if len(sys.argv) >= 2:

    # assign from command line arg
    fi_name = sys.argv[1]

else:

    # assign from prompt
    print('Path to file: ')
    fi_name = sys.stdin.readline().rstrip()

# get absolute file path
path = subprocess.check_output('pwd', shell=True).rstrip()
fi_path = path + '/' + fi_name

# open 'in' file, read, and sort
lines = [line.rstrip() for line in open(fi_path)]
lines.sort()

# open 'out' file
path = subprocess.check_output('cd ~; pwd', shell=True).rstrip()
file_path = path + '/.temp'
fo = open(file_path, 'w')

# write out
prev_line = ''
for i in lines:

    # remove duplicate entries
    if i != prev_line:
        fo.writelines([i, "\n"])

    prev_line = i

print('\n    Alphabetized and written to ~/.temp\n')
