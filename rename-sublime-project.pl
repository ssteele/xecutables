#!/usr/bin/perl -w


# environment
$editor_path = '/Users/stevenharville/ssteele/editor';
$tasks_path = "${editor_path}/sublime-projects-tasks";

# execution
die "\nThis program requires command-line input\n\n" if (!$ARGV[0]);
chomp($task = $ARGV[0]);

chdir("${tasks_path}") || die "Tasks path not found: ($!)";
open (I, "<./${task}.sublime-workspace") || die "Error opening I: $!";
open (O, ">./scratch.txt") || die "Error opening O: $!";

while ($line = <I>) {
    if ($line =~ m/"project": /) {
        $line = "\t\"project\": \"${task}.sublime-project\",\n";
    }
    print O $line;
}

rename ('scratch.txt', "${task}.sublime-workspace") || die "Error moving scratch file: $!";

exit;
