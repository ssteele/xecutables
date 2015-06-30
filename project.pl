#!/usr/bin/perl -w

die "\nThis program requires command-line input\n\n" if (!$ARGV[0]);
chomp ($project = $ARGV[0]);
$command = '~/ssteele/bin/subl';

system ("$command -n ~/sublime_projects/$project.sublime-project");

exit;
