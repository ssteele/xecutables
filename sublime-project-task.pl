#!/usr/bin/perl -w


# environment
$home_path = '~/ssteele';


# execution
die "\nThis program requires command-line input\n\n" if (!$ARGV[0]);
chomp($task = $ARGV[0]);
$command = "${home_path}/bin/subl";

print "\n    Is ${task} branch currently checked out?    ";
$is_current_branch = <STDIN>;
chomp($is_current_branch);
print "\n";

if ('y' eq $is_current_branch || 'Y' eq $is_current_branch) {
    system ("$command -n ~/sublime_projects_tasks/${task}.sublime-project");
}

exit;
