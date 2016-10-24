#!/usr/bin/perl -w

use strict;

my(
    $originalFileName,
    $newFileName,
    $find,
    $replace,
    $line,
);

if (@ARGV) {
    $originalFileName = $ARGV[0]
} else {
    print 'Please supply a file name: ';
    chomp ($originalFileName = <STDIN>);
}

print 'Find: ';
chomp ($find = <STDIN>);

print 'Replace: ';
chomp ($replace = <STDIN>);

$newFileName = 'new_' . $originalFileName;
open (O, ">$newFileName") || die "Error opening O: $!";

while ($line = <>) {
    $line =~ s/$find/$replace/;
    print O $line;
}

exit;
