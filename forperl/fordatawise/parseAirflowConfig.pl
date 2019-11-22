#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: parseAirflowConfig.pl
#
#        USAGE: ./parseAirflowConfig.pl
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
#      CREATED: 11/22/2019 20:09:08
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use JSON;


#main
my %h;
my @buf;
my $key;
printf("digraph {\n");
while(<>) {
    chomp;
    if( defined $key ) {
        if( /^([^(]*)\)/ ) {
            push @buf, $1;
            $h{$key}->{params} = {};
            my @processed_buf = split(/,/,join("",@buf));
            for(@processed_buf) {
                (my $k,my $v) = split(/=/,$_,2);
                for(($k,$v)) {
                    s/^\s*//;
                    s/\s*$//;
                    s/"/\\"/g;
                }
                $h{$key}->{params}->{$k} = $v;
            }
            $key = undef;
            @buf = ();
        } else {
            push @buf,$_;
        }
    } else {
        if( /(?<vn>[a-z_]+)\s*=\s*(?<cn>[A-Za-z]+Operator)\((?<rest>.*)$/ ) {
            $key = $+{vn};
            $h{$key} = {
                cn => $+{cn},
            };
            @buf = ($+{rest});
        }
    }
    if ( /(?<first>[a-z_]+)(?<rest>(\s*>>\s*[a-z_]+)+)/ ) {
        my @objs = ($+{first},($+{rest} =~ m/[a-z_]+/g));
        for (1..$#objs) {
            printf("\t%s -> %s;\n",$objs[$_-1],$objs[$_]);
        }
    }
}
for my $key (keys %h) {
    printf("\t%s [shape=\"rectangle\",label=\"%s\"];\n",$key,join("",map {$_."\\l"} ($h{$key}->{cn},map {$_."=".$h{$key}->{params}->{$_}} keys %{$h{$key}->{params}})));
}
printf("}\n");
