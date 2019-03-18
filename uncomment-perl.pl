#!/usr/bin/perl

while (<>) {
	s/\s+#.*//;
	print $_;
}

exit;
