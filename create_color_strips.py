#!/usr/bin/python

import sys

# Handle input
if (len(sys.argv) > 1):
    in_file = str(sys.argv[1])
else:
    in_file = raw_input('\n    Enter color definition filename: ')
    print('')

try:
    f_in = open(in_file)
except:
    print('    File not found\n')
    exit()

colors = f_in.read()
colorboxes = ''

# Convert color string into array
colors = colors.split('\n')

# Remove blank (first and last) elements
colors.pop(0)
colors.pop(-1)

for c in colors:

    entry = c.split(':')

    # Strip '$' from name
    name = entry[0][1:]

    # Strip ';' from code
    code = entry[1][:-1]

    colorboxes += '<div class="colorbox" style="background-color:' + code + '"><span>' + name + '<br />' + code + '</span></div>\n'

# HTML markup
o = """<!doctype html>
<html lang="en">
<head>
<title>Color Reference</title>
<meta charset="utf-8">
<style type="text/css">

body {
    background-color:#fff;
}

.colorbox {
    position:relative;
    width:90%;
    height:100px;
    margin:10px auto;
    border-radius:3px;
}

.colorbox span {
    position:absolute;
    right:0;
    width:125px;
    padding:48px 10px 10px 0;
    text-align:right;
    line-height:20px;
    font-family:"Trebuchet MS";
    font-size:16px;
    color:#333;
    background-color:rgba(255, 255, 255, 0.8);
    border:1px solid #ddd;
    border-radius:0 3px 3px 0;
}

</style>

</head>
<body>


"""

o += colorboxes

o += """

</body>
</html>
"""

f_out = open('colors.html', 'w')
f_out.write(o)