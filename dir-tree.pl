#!/usr/bin/perl -w


# This mod reports all unique directories in and within the current working directory


system ("find . > 0_dir.txt");

open (IN,"0_dir.txt") || die "Error opening IN: $!";

while ($line = <IN>) {
	if ($line =~ m|\.\/(.+)|) {
		chomp ($seg = $1);
		if (opendir(DIR,"$seg")) {
			print "$seg\n";
			closedir(DIR);
		}
	}
}

unlink ("0_dir.txt") || die "Error: $!";
