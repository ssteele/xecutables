#!/usr/bin/perl

require '/local/xecutables/config.pl';

$left = $ARGV[0];
$right = $ARGV[1];

if ($left && $right) {
	system ("$filemerge_path -left $left -right $right &");
} else {
	system ("$filemerge_path &");
}

exit