#!/usr/bin/perl

while (defined($file = <*.php *.html *.js *.json *.css *.scss *.rb>)) {

    rename ($file, "${file}.old") || die "Error renaming old $file: $!";

    open (IN, "<./${file}.old") || die "Error opening IN ${file}.old: $!";
    open (OUT, ">./$file") || die "Error opening OUT $file: $!";

    while ($line = <IN>) {

        $line =~ s/\t/    /g;
        print OUT "$line";

    }

    close IN || die "Error closing IN ${file}.old: $!";
    close OUT || die "Error closing OUT ${file}: $!";

    unlink ("${file}.old") || die "Error deleting ${file}.old: $!";

}