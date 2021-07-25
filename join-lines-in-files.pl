#!/usr/bin/perl

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# join lines in two files
#
# alias joinLinesInFiles="$xec/join-lines-in-files.pl"
#
# cd some-directory
# joinLinesInFiles
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

$keysFile = 'keys.txt';
$valsFile = 'vals.txt';
$joinFile = 'join.txt';

open (my $f1, "<./${keysFile}") || die "Error opening IN1 ${keysFile}: $!";
open (my $f2, "<./${valsFile}") || die "Error opening IN2 ${valsFile}: $!";
open (my $out, ">./${joinFile}") || die "Error opening OUT ${joinFile}: $!";

sub read_file_line {
    my $fh = shift;
    if ($fh and my $line = <$fh>) {
        chomp $line;
        return $line;
    }
    return;
}

sub compute {
    my ($key, $val) = @_;
    print $out "${key}${val}\n";
}

my $pair1 = read_file_line($f1);
my $pair2 = read_file_line($f2);

while ($pair1 and $pair2) {
    compute($pair1, $pair2);
    $pair1 = read_file_line($f1);
    $pair2 = read_file_line($f2);
}

close $f1 || die "Error closing IN1 ${keysFile}: $!";
close $f2 || die "Error closing IN2 ${valsFile}: $!";
close $out || die "Error closing OUT ${joinFile}: $!";
