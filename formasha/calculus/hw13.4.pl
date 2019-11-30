#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: hw13.4.pl
#
#        USAGE: ./hw13.4.pl  
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
#      CREATED: 11/26/2019 15:38:29
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Math::Trig ':pi';


#main
my $sum = 0;
for(1..4) {
    $sum += sin($_*pi/8)*pi/8;
}
printf("sum=%f\n",$sum);

my $sum = 0;
for(0..3) {
    $sum += sin($_*pi/8)*pi/8;
}
printf("sum=%f\n",$sum);

my @deaths = (
  0.0079,0.0638,0.1944,0.4435,
  0.5620,0.4630,0.2897,
);

my $sum = 0;
for(0..5) {
    $sum += $deaths[$_];
}
printf("sum=%f\n",$sum*14);

my $sum = 0;
for(1..6) {
    $sum += $deaths[$_];
}
printf("sum=%f\n",$sum*14);
