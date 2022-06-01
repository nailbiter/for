#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: extract_score.pl
#
#        USAGE: ./extract_score.pl  
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
#      CREATED: 10/07/19 07:37:48
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


#main
my $real = 0;
my $max = 0;
while(<>) {
    if( /\\score{(?<real>\d+(\.\d+)?)}{(?<max>\d+(\.\d+)?)}/ 
        || /\\secscore(Footnote)?{\d+}{(?<real>\d+(\.\d+)?)}{(?<max>\d+(\.\d+)?)}/
      ) {
        $real += $+{real};
        $max += $+{max};
    }
}
printf("%.2f/%.2f (%.2f\\%%)\n",$real,$max,$real/$max*100);
