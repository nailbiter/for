#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: hw5.3.pl
#
#        USAGE: ./hw5.3.pl  
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
#      CREATED: 18.11.2019 22:49:36
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


#global const's
my $VARNUM = 7;
#procedure
sub nor {
    (my $x, my $y) = @_;
    return !($x||$y);
}
sub nand {
    (my $x, my $y) = @_;
    return !($x&&$y);
}

#main
for my $i (0..(2**$VARNUM-1)) {
    my @l = reverse map {($i/(2**$_))%2} (0..($VARNUM-1));
    (my $a,my $b, my $c, my $d, my $e, my $f, my $g) = @l;
    printf("%s\n",join(",",@l,"|",
#            ((!$a||$b)&&($c||!$d)&&$e) ? 1 :0,
#            !nand(!nand(nand($a,!$b) , nand(!$c,$d)),$e) ? 1 :0,
            ((!$a||$b)&&($c||!$d)&&$e)||$f||!$g ? 1 : 0,
#            ( nand(nand(!nand(nand($a,!$b) , nand(!$c,$d)),$e),!nand(!$f,$g))) ? 1 :0,
            (!nor(nor(!nor(nor(!$a,$b),nor($c,!$d)),!$e),!nor($f,!$g))) ? 1:0,
        ));
}
