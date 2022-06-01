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
my $SIZE = 2;
for(my $i = 0; $i<(2**$SIZE);$i++){
    (my $y,my $z)= reverse map {int($i/(2**$_))%2} 0..($SIZE-1);
    $z = ($z+$y)%2;
    for(my $j = 0; $j<(2**$SIZE);$j++){
      (my $w,my $x)= reverse map {int($j/(2**$_))%2} 0..($SIZE-1);
      $x=($w+$x)%2;
      printf("%d ",
        !$w&&!$x||!$x&&!$y||$y&&$z||!$w&&!$z,
      );
    }
    printf("\n");
}
