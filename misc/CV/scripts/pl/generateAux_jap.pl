#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: generateAux_jap.pl
#
#        USAGE: ./generateAux_jap.pl  
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
#      CREATED: 03/17/19 17:21:04
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
#use utf8;
#binmode STDOUT, ':utf8';


#global const's
#global var's
#procedures
sub heisei{
	(my $arr) = @_;
	return sprintf("平成 %s",
		join("-",@$arr),
	);
}
sub export {
	return {
#		months=>\&months,
		heisei=>\&heisei,
	};
}

#main
1;
