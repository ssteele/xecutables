#!/usr/bin/python

import sys, subprocess
from random import choice

# copy to clipboard
def clipboard(data):
    process = subprocess.Popen('pbcopy', env={'LANG': 'en_US.UTF-8'}, stdin=subprocess.PIPE)
    process.communicate(data.encode('utf-8'))

# generate password composed of character set chunks
def password(charsets, length):
    password = ''
    remaining = length

    while remaining > 0:
        charset = choice(charsets)

        charhash = charset['chars'].split(' ')
        charsetLength = choice(range(charset['min'], charset['max'] + 1))

        if (remaining > charsetLength):
            charsetCount = charsetLength
            remaining -= charsetLength
        else:
            charsetCount = remaining
            remaining = 0

        password += ''.join([choice(charhash) for i in range(charsetCount)])

    clipboard(password)
    print(password)
