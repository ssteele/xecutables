#!/usr/bin/perl -w


# environment
$home_path = '${ss}';
$projects_path = '${editorPath}/sublime-projects';
$command = "${home_path}/bin/subl";


# execution
die "\nThis program requires command-line input\n\n" if (!$ARGV[0]);
chomp($project = $ARGV[0]);

system("${command} -n ${projects_path}/${project}.sublime-project");

exit;
