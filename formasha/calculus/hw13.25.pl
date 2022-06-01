#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: hw13.25.pl
#
#        USAGE: ./hw13.25.pl  
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
#      CREATED: 30.11.2019 12:23:13
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Math::Trig;


#main
my $n = $ARGV[0];
$n //= 100;
my $sum = 0;
for my $i (1..$n) {
	$sum += tan(($i*pi)/(4*$n));
}
$sum *= pi/(4*$n);
printf("%f=%f\n",$sum,log(2)/2);
