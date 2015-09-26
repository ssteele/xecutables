#!/usr/bin/perl -w


# environmental vars
$port = ':8888';


#execution
chomp ($path = $ARGV[0]);
$file = $ARGV[1];

$path =~ s|/Applications/MAMP/htdocs|http://localhost$port|;
$php = $path . "/" . $file . "\n";

$chrome = "/Applications/Google\\ Chrome.app/";
system ("open -a $chrome $php");

exit;
