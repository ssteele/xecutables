#!/usr/bin/perl -w

chomp ($path = $ARGV[0]);
$file = $ARGV[1];
$path =~ s|/Applications/MAMP/htdocs|http://localhost|;
$php = $path . "/" . $file . "\n";

system ("open -a /Applications/Firefox.app/ $php");

exit;
