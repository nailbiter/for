#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: hw6.3.pl
#
#        USAGE: ./hw6.3.pl  
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
#      CREATED: 22.11.201$END 06:10:18
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
binmode STDOUT, ":utf8";


#global const's
my $END = 14;
#procedures
sub inv {
    (my $f,my $del) = @_;
    $del //= 1;
    return sub {
        (my $t) = @_;
        return 1-($f->($t-$del));
    }
}
sub p {
    (my $x) = @_;
    return $x?"‾":"_";
}
sub myand {
    (my$del,my @f) = @_;
    return sub {
        (my $t) = @_;
        my $res = 1;
        for(@f) {
          $res *= $_->($t-$del);
        }
        return $res;
    };
}
sub max {
    (my $x, my $y) = @_;
    if( $x < $y ) {
        return $y;
    } else {
        return $x;
    }
}
sub myor {
    (my $del,my @f) = @_;
    return sub {
        (my $t) = @_;
        my $res = 0;
        for(@f) {
          $res = max($res,$_->($t-$del));
        }
        return $res;
    };
}
sub w {
    (my $t) = @_;
    if( $t < 2 ) {
        return 0;
    } elsif ( $t < 4 ) {
        return 1;
    } elsif ( $t < 6 ) {
        return 0;
    } else {
        return 1;
    }
}
sub x {
    (my $t) = @_;
    if( $t < 1 ) {
        return 0;
    } elsif( $t < 3 ) {
        return 1;
    } elsif( $t < 6 ) {
        return 0;
    } elsif( $t < 8 ) {
        return 1;
    } else {
        return 0;
    }
}
sub yy {
    (my $t) = @_;
    if( $t < 2 ) {
        return 0;
    } elsif( $t < 7 ) {
        return 1;
    } else {
        return 0;
    }
}

#main
printf("w ");
for(0..$END) {
    printf("%s ", p w $_);
}
printf("\n");

printf("x ");
for(0..$END) {
    printf("%s ", p x $_);
}
printf("\n");

printf("y ");
for(0..$END) {
    printf("%s ", p yy $_);
}
printf("\n");

printf("v ");
for(0..$END) {
    printf("%s ", p ((myand 2, \&x, \&w)->($_)));
}
printf("\n");

printf("z ");
for(0..$END) {
    printf("%s ", p ((myor 1,(myand 2, \&x, \&w),\&yy)->($_)));
}
printf("\n");

printf("t ");
for(0..$END) {
    if( $_ < 10 ) {
      printf("%d ",$_);
    } else {
      printf("%d",$_);
    }
}
printf("\n");
