#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: hw6.14.pl
#
#        USAGE: ./hw6.14.pl  
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
#      CREATED: 22.11.2019 08:00:44
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


#procedures
sub myand {
    (my $x,my $y) = @_;
    if( $x == 0 || $y == 0 ) {
        return 0;
    } elsif( $x == 1 && $y == 1 ) {
        return 1;
    } else {
        return 2;
    }
}
sub myor {
    (my $x,my $y) = @_;
    if( $x == 1 || $y == 1 ) {
        return 1;
    } elsif( $x ==0 && $y == 0 ) {
        return 0;
    } else {
        return 2;
    }
}
sub mynot {
    (my $x) = @_;
    if( $x == 0 or $x == 1 ) {
        return 1-$x;
    } else {
        return 2;
    }
}

#main
my %h;
$h{A} = 3;
$h{E} = 3;
$h{B} = 0;
$h{C} = mynot $h{A};
$h{D} = myand $h{A}, $h{B};
$h{F} = myor (myor $h{C},$h{D}), $h{B};
$h{G} = mynot (myand $h{E},$h{B});
$h{H} = mynot(myor $h{F},$h{G});

for(sort keys %h) {
    my $s;
    if($h{$_} == 2) {
        $s = "X";
    } elsif($h{$_}==3) {
        $s = "Z";
    } else {
        $s = $h{$_};
    }
    printf("%s %s\n",$_,$s);
}
#printf("%s %d\n","C",mynot $A);
#printf("%s %d\n","D",(myand $A,$B));
#printf("%s %d\n","F",myor(myor(mynot $A,)));
