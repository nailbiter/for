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


#procedures
sub logic_eval {
    (my $expr, my %env) = @_;
    $expr .= ";";
    for($expr) {
        s/([\'a-z])([a-z])/$1&&$2/g;
        s/([\'a-z])([a-z])/$1&&$2/g;
        s/\)\(/)&&(/g;
        s/([a-z])([^\'])/\$env{$1}$2/g;
        s/([a-z])\'/!\$env{$1}/g;
        s/\+/||/g;
    }
    printf(STDERR "expr: %s\n",$expr);
    return eval $expr;
}

#main
my $SIZE = 3;

for(my $i = 0; $i<(2**$SIZE);$i++){
    my @l = reverse map {int($i/(2**$_))%2} 0..($SIZE-1);
    (my $b,my $c,my $d) = @l;
    my %h;
    @h{qw(b c d)} = @l;
    printf("%s\n",join(" ",@l,
            "|",
            ($b&&$c&&$d)||(!$c&&!$d)||(!$b&&!$c&&$d)||($c&&$d)?1:0,
            (!$a||!$b||!$d)&&($c||!$b||!$d)&&($a||!$c||$d)&&(!$a||$b||$d)&&($b||!$c||$d)?1:0,
            logic_eval("(b'+c+d')(c'+d)",%h)?1:0,
        ));
}

printf("\nPROBLEM 2:\n");

$SIZE = 4;
for(my $i = 0; $i<(2**$SIZE);$i++){
    my @l = reverse map {int($i/(2**$_))%2} 0..($SIZE-1);
    my %env;
    @env{qw(a b c d)} = @l;
    printf("%s\n",join(" ",@l,
            "|",
            logic_eval("a'c'd'+abd'+a'cd+b'd",%env)?1:0,
            logic_eval("(a'+b'+d')(c+b'+d')(a+c'+d)(a'+b+d)(b+c'+d)",%env)?1:0,
            logic_eval("(a+c'+d)(a'+b+d)(b'+c+d')(a'+b'+d')",%env)?1:0,
        ));
}
