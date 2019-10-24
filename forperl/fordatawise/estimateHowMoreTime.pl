#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: estimateHowMoreTime.pl
#
#        USAGE: ./estimateHowMoreTime.pl  
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
#      CREATED: 10/24/2019 15:08:25
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use JSON;
use Path::Tiny qw(path);
use Data::Dumper;


#main
my $json = from_json(path($ARGV[0])->slurp_utf8);
print Dumper($json),"\n";
