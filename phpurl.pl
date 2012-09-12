#!/usr/bin/perl -w

chomp ($path = $ARGV[0]);
$file = $ARGV[1];
$path =~ s|/Applications/MAMP/htdocs|http://localhost|;
$php = $path . "/" . $file . "\n";

$chrome = "/Applications/Google\\ Chrome.app/";

system ("open -a $chrome $php");

exit;
