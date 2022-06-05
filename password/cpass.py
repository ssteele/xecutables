#!/usr/bin/python3

import sys, character, generate
from pprint import pprint

# set defaults
setName = 'ios'
length = 16

# interpret input: order doesn't matter
args = sys.argv
del args[0]
if (len(args) > 0):
    for arg in sys.argv:
        try:
            if isinstance(int(arg), (int)):
                length = int(arg)
        except Exception:
            setName = arg

generate.password(character.sets[setName], length)
