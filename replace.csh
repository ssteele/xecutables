#!/bin/csh

echo -n "perl -pi -e 's|||g' *.php" | pbcopy

echo ''
echo 'Inline replacement command can be pasted in...'
echo "Don't forget to:"
echo '...escape parentheses'
echo '...replace wrapping single quotes as necessary'
echo ''

exit