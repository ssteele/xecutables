#!/usr/bin/perl

$left = $ARGV[0];
$right = $ARGV[1];

if ($left && $right) {
	system ("/Developer/Applications/Utilities/FileMerge.app/Contents/MacOS/FileMerge -left $left -right $right &");
} else {
	system ("/Developer/Applications/Utilities/FileMerge.app/Contents/MacOS/FileMerge &");
}

exit