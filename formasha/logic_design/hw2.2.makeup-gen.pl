#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: hw2.1.makeup-gen.pl
#
#        USAGE: ./hw2.1.makeup-gen.pl  
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
#      CREATED: 03.11.2019 11:31:06
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


#main
my @alph = "a".."z";
my $numOfMultiplicands = 3+int(rand()*4);
my $numOfVars = 4;
my @res;
for(0..($numOfMultiplicands-1)) {
    my @vars;
    for(1..$numOfVars) {
        if( rand()<2/3 ) {
            if( rand()<3/8 ) {
                push @vars, $alph[$_-1]."'";
            } else {
                push @vars, $alph[$_-1];
            }
        }
    }
    push @res, sprintf("%s",join("",@vars))
}
printf("%s\n",join("+",@res));
