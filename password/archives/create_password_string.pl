#!/usr/bin/perl

open (TO_CLIPBOARD, "|pbcopy");

my $password;
my $passlength = $ARGV[0];
$passlength = 16 if (!$passlength);

# my @chars = qw(0 1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z ! @ # $ % ^ & * \( \) \\ - _ = + | { } [ ] ; : ' " < . , > / ?);
my @chars = qw(a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z);

my $charcount = @chars;
my $random_number;

print "\n";
for ($i=0 ; $i<$passlength ; $i++) {
	$random_number = int(rand($charcount));
	$password .= $chars[$random_number];
}
print "$password\n\n";
print TO_CLIPBOARD $password;

close TO_CLIPBOARD || die "Error TO_CLIPBOARD: $!";

exit;
