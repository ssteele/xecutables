#!/usr/bin/python

import subprocess
import time

def write_to_clipboard(output):
    process = subprocess.Popen(
        'pbcopy', env={'LANG': 'en_US.UTF-8'}, stdin=subprocess.PIPE)
    process.communicate(output.encode('utf-8'))

ts = str(int(round(time.time())))
print(ts)
write_to_clipboard(ts)
