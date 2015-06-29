#generate a random DNA strings and print it to file specified by the user.

print "What is the name of the output file?\n";
$rstrings = <STDIN>;
open (OUT, ">$rstrings");

print "How many nucleotides for the string?\n";
$n = <>;

print "How many random strings to produce?\n";
$count = <>;

for ($x=1; $x <= $count; $x++){
$numstring = ''; # start with the empty string;
$i = 0;
while ($i < $n) {

   $numstring = int(rand(4)) . $numstring; # generate a new random integer
                                           # between 0 and 3, and concatenate
                                           # it with the existing $numstring,
                                           # assigning the result to $numstring.
   $i++;                                   # increase the value of $i by one.
}

$dnastring = $numstring;                  # unneeded, but good for clarity.
$dnastring =~ tr/0123/actg/; # translate the numbers to DNA characters.
print OUT "$dnastring\n";
}
close (OUT);

my $file = "$rstrings";
open(FH, "< $file") or die;
my @line;
while (<FH>){
	chomp;
	push (@line, $_)
}
close FH or die;

print join ("\n", @line);

for ($a=0; $a < $count; $a++){
	my @strings = split(//, @line[a]);
	for each my $str (@strings){
		print "$str\n";
	}
#$firststring = @strings[a];
#print "@first";
print "\nLength = $firststring";
}

