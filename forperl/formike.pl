#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: formike.pl
#
#        USAGE: ./formike.pl -x ~/Downloads/FileZilla.xml 
#
#  DESCRIPTION: copy mike files
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 10/04/2018 11:14:37 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;
use XML::Simple;

#main
my $filename;
GetOptions("xml=s" => \$filename);
printf("got file %s\n",$filename);
open(my $FILE, $filename) or die "Can't read file 'filename' [$!]\n";  
my $xml = <$FILE>; 
close ($FILE);
$xml = new XML::Simple;
my $data = $xml->XMLin($filename);
for @{$data->{Queue}->{Server}->{File}}{
}
}
