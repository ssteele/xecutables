#!/usr/bin/perl -w


# environment
$home_path = '~/ssteele';
$projects_path = '~/sublime_projects_tasks';


# execution
die "\nThis program requires command-line input\n\n" if (!$ARGV[0]);
chomp($task = $ARGV[0]);
$command = "${home_path}/bin/subl";

# sublime text drops files if they no longer exist, so have to check branch
print "\n    Is ${task} branch currently checked out?    ";
$is_current_branch = <STDIN>;
chomp($is_current_branch);
print "\n";

if ('y' eq $is_current_branch || 'Y' eq $is_current_branch) {
    system("${command} -n ${projects_path}/${task}.sublime-project");
}

exit;
