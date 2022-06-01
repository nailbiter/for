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
#      CREATED: 22.11.2019 06:10:18
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
binmode STDOUT, ":utf8";


#procedures
sub inv {
    (my $f) = @_;
    return sub {
        (my $t) = @_;
        return 1-($f->($t-1));
    }
}
sub d {
    (my $t) = @_;
    return 1;
}
sub c {
    (my $t) = @_;
    return ($t<=1) ? 1 : 0;
}
sub b {
    (my $t) = @_;
    return 1;
}
sub a {
    (my $t) = @_;
    return 0;
}
sub p {
    (my $x) = @_;
    return $x?"‾":"_";
}
sub myand {
    (my @f) = @_;
    return sub {
        (my $t) = @_;
        my $res = 1;
        for(@f) {
          $res *= $_->($t-2);
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
    (my @f) = @_;
    return sub {
        (my $t) = @_;
        my $res = 0;
        for(@f) {
          $res = max($res,$_->($t-2));
        }
        return $res;
    };
}

#main
printf("nG");
for(0..9) {
    printf("%s ",p myor(
            myand(\&b,\&c),
            myand(inv \&c,inv \&a,\&d),
            myand(inv \&a,\&b,\&d),
        )->($_));
}
printf("\n");

printf("G ");
for(0..9) {
    my $f = myand(\&d, inv(\&c), inv(\&a));
    my $e = myand(\&b,\&c);
    printf("%s ",p myor($f,$e)->($_));
}
printf("\n");

printf("F ");
for(0..9) {
    printf("%s ",p myand(\&d, inv(\&c), inv(\&a))->($_));
}
printf("\n");

printf("E ");
for(0..9) {
    printf("%s ",p myand(\&c,\&b)->($_));
}
printf("\n");

printf("D ");
for(0..9) {
    printf("%s ",p d $_);
}
printf("\n");

printf("C'");
for(0..9) {
    printf("%s ",p inv(\&c)->($_));
}
printf("\n");

printf("C ");
for(0..9) {
    printf("%s ",p c $_);
}
printf("\n");

printf("B ");
for(0..9) {
    printf("%s ",p b $_);
}
printf("\n");

printf("A ");
for(0..9) {
    printf("%s ",p a $_);
}
printf("\n");

printf("t ");
for(0..9) {
    printf("%d ",$_);
}
printf("\n");
