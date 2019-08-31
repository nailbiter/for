#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: script.pl
#
#        USAGE: ./script.pl  
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
#      CREATED: 08/17/19 08:12:19
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


while(<>) {
	chomp;
	if( /(\d{4}).mp3/ ) {
		printf("line: %s\n",$1);
		system(sprintf("kid3-cli -c \"select %s.mp3\" -c \"set Titel %s\" .",$1,$1));
	}
}
