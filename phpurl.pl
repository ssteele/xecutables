#!/usr/bin/perl -w

chomp ($path = $ARGV[0]);
$file = $ARGV[1];

$port = ':8888';

$path =~ s|/Applications/MAMP/htdocs|http://localhost|;
$php = $path . $port . "/" . $file . "\n";

$chrome = "/Applications/Google\\ Chrome.app/";

system ("open -a $chrome $php");

exit;
