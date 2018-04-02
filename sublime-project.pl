#!/usr/bin/perl -w


# environment
$home_path = '${ss}';
$projects_path = '${editor_path}/sublime-projects';


# execution
die "\nThis program requires command-line input\n\n" if (!$ARGV[0]);
chomp($project = $ARGV[0]);
$command = "${home_path}/bin/subl";

system("${command} -n ${projects_path}/${project}.sublime-project");

exit;
