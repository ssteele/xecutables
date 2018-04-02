#!/usr/bin/perl -w


# environment
$tasks_path = '${editor_path}/vim-projects-tasks';


# execution
die "\nThis program requires command-line input\n\n" if (!$ARGV[0]);
chomp ($task = $ARGV[0]);
$command = 'mvim';

system ("${command} -S ${tasks_path}/${task}");

exit;
