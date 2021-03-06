#!/usr/bin/perl
#
# Interactive Perl.
#
#  ! command  Pass command to shell. $val <== $?
#  ?    Print $val.
#  perl stuff  $val <== eval 'perl stuff'
#
# Multiline perl text uses slosh extension.
#  - Cameron Simpson <cameron@cse.unsw.edu.au>, 23feb93
#


require 'flush.pl';

($cmd=$0) =~ s:.*/::;

$tty=(-t STDIN);
$ps1=$cmd.'> ';
$ps2=(' ' x length($cmd)).'> ';

defined($ENV{'SHELL'}) || ($ENV{'SHELL'}='/bin/sh');
$SIG{'INT'}='IGNORE';

$xit=0;
$val=0;
MAINLOOP:
while (&flush(STDOUT), ($tty && print STDERR $ps1), defined($_=<STDIN>)) { 
  tr/\n//d;
  s/^\s+//;

  # slosh extension
  while (/\\$/) {
    s/\\$//;
    if (($tty && print STDERR $ps2), defined($line=<STDIN>)) {
			$line =~ tr/\n//d;
      $_.="\n".$line;
    } else {
	  	print STDERR "$cmd: unexpected EOF\n";
        $xit=1;
        last MAINLOOP;
    }
  }
  if (/^!/) {
  	s/^!//;
      $val=&shellcmd($_);
  } else {
	  s/\s+$//;
    if ($_ eq '?') {
	  	print $val, "\n";
    } else {
			$val=eval $_;
      if ($@) {
				print STDERR "eval: $@\n";
        $xit=1;
      } else {
		  	$xit=($val == 0);
      }
    }
  }
}

$tty && print STDERR "\n";

exit $xit;

sub shellcmd {
  local($shc)=@_;
  local($xit,$pid);

  if (!defined($pid=fork)) {
  	print STDERR "$cmd: fork fails: $!\n";
    $xit=$!;
  } elsif ($pid == 0) {
    # child
	  $SIG{'INT'}='DEFAULT';
    exec($ENV{'SHELL'},'-c',$shc);
    print STDERR "$cmd: exec $ENV{'SHELL'} fails: $!\n";
    exit 1;
  } else {
    # parent
  	local($wait);
    $wait=waitpid($pid,0);
    $SIG{'INT'}='IGNORE';
    if ($wait == -1) {
	  	die "no child? (waitpid: $!)";
    } else {
	  	if ($pid != $wait) {
				die "waitpid($pid,0) == $wait";
      } else {
				$xit=$?;
      }
    }
  }
  $xit;
}
