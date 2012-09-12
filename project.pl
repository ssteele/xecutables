#!/usr/bin/perl -w

die "\nThis program requires command-line input\n\n" if (!$ARGV[0]);
chomp ($project = $ARGV[0]);
$command = '/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl';

system ("$command -n ~/sublime_projects/$project.sublime-project");

exit;
