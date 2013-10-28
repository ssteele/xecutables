#!/usr/bin/perl

$push_to_branch = $ARGV[0];
$xec = $ARGV[1];
$pwd = $ARGV[2];

open (IN,"<$pwd/0_temp") || die "Error opening IN: $!";

while ($line = <IN>) {
	if ($line =~ m/# On branch (.+)/) {
		$current_branch = $1;
	}
}

close IN || die "Error closing IN: $!";

if ($push_to_branch eq 'shs_current_shs') {
	$push_to_branch = $current_branch;
}

system ("/bin/csh $xec/push_latest_commit/two_branch_monte.csh $current_branch $push_to_branch");

exit;