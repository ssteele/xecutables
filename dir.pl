#!/usr/bin/perl -w


# This mod reports all unique directories in and within the current working directory


system ("ls -1 . > 0_dir.txt");

open (IN,"0_dir.txt") || die "Error opening IN: $!";

while ($line = <IN>) {
	chomp ($line);
	if (opendir(DIR,"$line")) {
		print "$line/\n";
		closedir(DIR);
	}
}

print "\n";

unlink ("0_dir.txt") || die "Error: $!";
