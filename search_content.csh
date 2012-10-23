#!/bin/csh

set query = $argv[1]

find . -type f \-exec grep $query \{\} \; -print \-exec echo '' \;
echo ""
echo "RESULTS FOR:"
echo "set query = $query"
echo ""

exit