#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: 210d6d4d4529e1e75ab33f21.pl
#
#        USAGE: ./210d6d4d4529e1e75ab33f21.pl  
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
#      CREATED: 08/04/2020 10:33:31
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use DateTime;

my $dt = DateTime->now(time_zone => 'Asia/Tokyo');
while(<>) {
	chomp;
	if(/AssistantBot/ || /^\s*$/ || /^https/) {
		next;
	}
	print(sprintf("%s: %s\n",$dt->ymd,$_));
}
