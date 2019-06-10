#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: generateAux_eng.pl
#
#        USAGE: ./generateAux_eng.pl  
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
#      CREATED: 03/17/19 17:21:18
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


#global const's
#global var's
#procedures
sub heisei{
	(my $arg) = @_;
  	return join("-",map {1988+$_} @$arg);
}
sub export {
	return {
#		months=>\&months,
		heisei=>\&heisei,
	};
}

#main
1;
