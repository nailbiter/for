#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: install.pl
#
#        USAGE: ./dump-deps.pl [file1.pl file2.pl ...]
#
#  DESCRIPTION: dumps dependencies of a given list of .pl scripts
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/09/19 14:50:43
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
#use Data::Dumper;


#global const's
my @DEFAULT_DEPS = qw( strict warnings );

#main
my %default_deps;
@default_deps{@DEFAULT_DEPS} = (1) x @DEFAULT_DEPS;
my %res;
while(<>) {
    chomp;
    if(/^use ([A-Za-z:]+);$/) {
        $res{$1} = 1 unless $default_deps{$1};
    }
}
print join(" ",keys %res);
