#!/usr/bin/python3

import subprocess
import sys

jira_path = 'https://liaison-intl.atlassian.net/browse/'
project_prefix = 'OUT'

if (len(sys.argv) > 1):
    ticket = sys.argv[1]
else:
    # assign from prompt
    print('Jira ticket: ')
    ticket = sys.stdin.readline().rstrip()

try:
    if (isinstance(int(ticket), (int)) and not isinstance(int(ticket), bool)):
        ticket = project_prefix + '-' + ticket
except:
    pass

ticket = str(ticket)
output = jira_path + ticket

subprocess.run('pbcopy', text=True, input=output)
print('\n' + output + '\n')
