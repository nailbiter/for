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
my $SIZE = 3;
my @m,my @M;
for(my $i = 0; $i<(2**$SIZE);$i++){
    my @l = reverse map {int($i/(2**$_))%2} 0..($SIZE-1);
	(my $a,my $b, my $c) = @l;
	my $res = 
			$a&&$b&&!$c || !$b;
    printf("%s\n",join(" ",
			sprintf("%02d",$i),"|",
			@l,
            "|",
			$res ? 1:0,
        ));
	if($res) {
		push @m, $i;
	} else {
		push @M, $i;
	}
}
printf("m: %s\n",join(", ",@m));
printf("M: %s\n",join(", ",@M));
