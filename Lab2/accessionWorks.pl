# Kevin Dang Nguyen


print "type the input file name please\n";
open (INFO, <>);  # open the input file and assign the handle INFO

print "type the output file name please\n";
$myoutfile = <>;  # Read in the file name for the output.
open (OUTFO, "> $myoutfile"); # open the output file and assign the handle
                              #OUTFO

while (<INFO>) {
	foreach $word (m/(\w+)/g) {
		if ($word =~ m/[A-Z]{1,2}\d{3,7}/){
			print OUTFO "$word\n";
		}
	}
}
