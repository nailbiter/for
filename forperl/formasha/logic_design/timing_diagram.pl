#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: timing_diagram.pl
#
#        USAGE: ./timing_diagram.pl  
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
#      CREATED: 05.12.2019 22:36:44
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;
use JSON;
use List::Util qw( max );
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";


#procedures
sub printTimingDiagrams {
    (my $maxtime, my $functionsRef) = @_;
    my %functions = %$functionsRef;
    my $max_name_len = max map {length($_)} keys %functions;
    my $digits_num = int(log($maxtime)/log(10))+1;

    for my $key ( sort keys %functions ) {
        printf(sprintf("%%-%ds",$max_name_len+1),$key);
        for my $t (0..($maxtime-1)) {
            printf("%s%s",$functions{$key}->($t,$functionsRef) ? "‾" : "_", " "x$digits_num);
        }
        printf("\n\n");
    }
    printf(sprintf("%%-%ds",$max_name_len+1),"t");
    for my $t (0..($maxtime-1)) {
        printf(sprintf("%%0%dd ",$digits_num),$t);
    }
    printf("\n");
}
sub functionFromString {
    (my $val) = @_;
    my @vals = split(/\s+/,$val);
    return sub {
        (my $t) = @_;
        if( $t < 0 || $t >= @vals ) {
            return 0;
        } else {
            return $vals[$t];
        }
    }
}
sub functionFromCharacteristicEquation {
    (my $self,my $equation) = @_;
    return sub {
        (my $t, my $env) = @_;
        my @stack;
        for (split(/\s+/,$equation)) {

        }
        return 1;
    }
}

#main
my %opts;
GetOptions(
    "input=s@" => \$opts{input},
    "output=s@" => \$opts{output},
);
printf(STDERR"%s\n",to_json(\%opts,{pretty=>1,canonical=>1}));
my %input;
for(@{$opts{input}}) {
    (my $name, my $val) = split(/\s+/,$_,2);
    $input{$name} = functionFromString($val);
}
for(@{$opts{output}}) {
    (my $name, my $val) = split(/=/,$_,2);
    $input{$name} = functionFromCharacteristicEquation($name,$val);
}
printTimingDiagrams((max map {scalar(split(/\s+/,$_))-1} @{$opts{input}}),\%input);
