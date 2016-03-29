#!/usr/bin/perl -w

# reads a decimal value from 0-255 one per line from stdin
# writes a file composed solely of the corresponding bytes 
# to the file specified on the commandline

open OUTFILE, '>'.$ARGV[0] or die "Can't open file $ARGV[0]:$!";
binmode(OUTFILE);
while(my $line = <STDIN>) {
    chomp($line);
    print OUTFILE pack('C', $line);
}
close OUTFILE or die "couldn't close file $ARGV[0]: #!";
