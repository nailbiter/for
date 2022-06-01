#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: converter.pl
#
#        USAGE: ./converter.pl  
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
#      CREATED: 10/18/19 07:59:24
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


#main
my @l = (
    "xy+x'yz'+yz",
    "(xy'+z)(x+y')z",
    "xy'+z+(x'+y)z'",
);
for(@l) {
    s/([a-z'])([a-z])/$1&&$2/g;
    s/\+/||/g;
    s/([a-z])'/!$1/g;
    s/([a-z])/\$$1/g;
    print $_,",\n";
}
