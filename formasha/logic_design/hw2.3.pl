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


#main
my $SIZE = 3;
for(my $i = 0; $i<(2**$SIZE);$i++){
    my @l = reverse map {int($i/(2**$_))%2} 0..($SIZE-1);
    (my $a,my $b,my $d) = @l;
    printf("%s\n",join(" ",@l,
            "|",
            (($a&&$b)+($d||(!$a&&!$d)))%2?1:0,
            !$a||($d&&!$b)||($a&&$b&&!$d)?1:0,
        ));
}
