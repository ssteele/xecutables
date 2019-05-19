#!/usr/bin/perl -w


# environment
$projects_path = '${editorPath}/vim-projects';


# execution
die "\nThis program requires command-line input\n\n" if (!$ARGV[0]);
chomp ($project = $ARGV[0]);
$command = 'mvim';

system ("${command} -S ${projects_path}/${project}");

exit;
