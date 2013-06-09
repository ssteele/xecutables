#!/bin/csh

if ($#argv == 0) then
	set file = 'php'
else
	set file = $argv[1]
endif

echo ''
echo "I'm about to mess up the repo good. Proceed?"
echo ''

set input = ""
while ( $input != "y" )
	echo -n "'y' to confirm: "
	set input = "$<"
end

echo ''
sed -i.bak 's,get_header();,get_header(); ?><div style="background-color:#ff0; height:50px"></div><?php,' *$file*

rm -fr *.bak

exit