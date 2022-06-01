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
my $SIZE = 4;
for(my $i = 0; $i<(2**$SIZE);$i++){
    (my $a, my $b,my $c,my $d) = reverse map {int($i/(2**$_))%2} 0..($SIZE-1);
    printf("%s\n",join(" ",$a,$b,$c,$d,
            "|",
            ($a||$b||$c||$d)&&(!$a||!$b||$c||!$d)&&(!$a||$c)&&($a||$d)&&($b||$c||$d)?1:0,
            ($a&&$c)||(!$a&&$d)?1:0,
        ));
}
