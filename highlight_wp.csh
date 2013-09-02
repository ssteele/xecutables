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

perl -pi -e 's|get_header\(\);|get_header(); ?><div style="min-height:45px; padding:15px; font-size:15px; background-color:#ff0;"><?php echo __FILE__; ?></div><?php|g' *$file*

exit