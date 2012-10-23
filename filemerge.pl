#!/usr/bin/perl

$left = $ARGV[0];
$right = $ARGV[1];

if ($left && $right) {
	system ("/Applications/Xcode.app/Contents/Applications/FileMerge.app/Contents/MacOS/FileMerge -left $left -right $right &");
} else {
	system ("/Applications/Xcode.app/Contents/Applications/FileMerge.app/Contents/MacOS/FileMerge&");
}

exit