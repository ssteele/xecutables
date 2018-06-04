#!/usr/bin/python

import sys, subprocess
from random import choice

def writeToClipboard(output):
    process = subprocess.Popen('pbcopy', env={'LANG': 'en_US.UTF-8'}, stdin=subprocess.PIPE)
    process.communicate(output.encode('utf-8'))

# general
numbers = '0 1 2 3 4 5 6 7 8 9'
alphasLower = 'a b c d e f g h i j k l m n o p q r s t u v w x y z'
alphasUpper = 'A B C D E F G H I J K L M N O P Q R S T U V W X Y Z'
specials = '! @ # $ % ^ & * ( ) - _ = + | { } [ ] ; : \' " < . , > / ?'

# ios
iosSpecialsPageOne = '0 1 2 3 4 5 6 7 8 9 - / : ; ( ) $ & @ " . , ? ! \''
iosSpecialsPageTwo = '[ ] { } # % ^ * + = _ | ~ < > . , ? ! \''

charsets = [
    {
        "chars": alphasLower,
        "min": 3,
        "max": 5
    },
    {
        "chars": alphasUpper,
        "min": 1,
        "max": 1
    },
    {
        "chars": iosSpecialsPageOne,
        "min": 3,
        "max": 4
    },
    {
        "chars": iosSpecialsPageTwo,
        "min": 3,
        "max": 3
    }
]

length = 16
if (len(sys.argv) > 1):
    length = int(sys.argv[1])

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

writeToClipboard(password)
print(password)
