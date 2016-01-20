#!/bin/csh

echo ''
echo "I'm about to mess up the repo good. Proceed?"
echo ''

set input = ""
while ( $input != "y" )
	echo -n "'y' to confirm: "
	set input = "$<"
end

echo ''

$xec/highlight_all.pl

exit
