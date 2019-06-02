#!/usr/bin/perl -w


# environment
$home_path = '${ss}';
$tasks_path = '${editorPath}/sublime-tasks';
$command = "${home_path}/bin/subl";


# execution
die "\nThis program requires command-line input\n\n" if (!$ARGV[0]);
chomp($task = $ARGV[0]);

# sublime text drops files if they no longer exist, so have to check branch
print "\n    Is ${task} branch currently checked out?    ";
$is_current_branch = <STDIN>;
chomp($is_current_branch);
print "\n";

if ('y' eq $is_current_branch || 'Y' eq $is_current_branch) {
    system("${command} -n ${tasks_path}/${task}.sublime-project");
}

exit;
