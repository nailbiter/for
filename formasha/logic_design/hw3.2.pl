#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: hw2.1.pl
#
#        USAGE: ./hw2.1.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 10/18/19 07:25:59
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use List::Util qw(sum);


#main
my $SIZE = 4;
for(my $i = 0; $i<(2**$SIZE);$i++){
    my @l = reverse map {int($i/(2**$_))%2} 0..($SIZE-1);
	my @x = @l;
    printf("%s\n",join(" ",
			sprintf("%02d",$i),"|",
			@x,
            "|",
			sum(@l) == 0 ? 0 : 1,
			sum(@l)==0?("x","x"):$l[3]?(1,1):$l[2]?(1,0):$l[1]?(0,1):(0,0),
        ));
}
