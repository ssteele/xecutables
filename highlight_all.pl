#!/usr/bin/perl

while ($file = glob("*.php")) {

    open(I, "<$file") || die "Error opening $file: $!";
    open(O, ">new_${file}") || die "Error opening new_${file}: $!";

    print O '<div style="min-height:45px; padding:15px; font-size:15px; background-color:#ff0;"><?php echo __FILE__; ?></div>' . "\n";

    while ($line = <I>) {

        print O $line;

    }

    close I || die "Error closing $file: $!";
    close O || die "Error closing new_${file}: $!";

    rename("new_${file}", $file) || die "Error: $!";

}

exit;