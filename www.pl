#!/usr/bin/perl

$path = $ARGV[0];

open (I, "<$path") || die "Error opening I: $!";
open (O, ">/Users/steele/url_temp.txt") || die "Error opening O: $!";

while ($line = <I>) {

    if ($line =~ m/^#/) {

        # Don't include commented out URLs
        next;

    } else {

        print O $line;

    }

}

close I || die "Error closing I: $!";
close O || die "Error closing O: $!";

exit;