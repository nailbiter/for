#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: pdf_link.pl
#
#        USAGE: ./pdf_link.pl  
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
#      CREATED: 04/05/2020 19:51:42
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


#main
(my $fn) = @ARGV;
if( $fn =~ /(hw\d+).tex$/ ) {
	printf("https://github.com/nailbiter/for/blob/master/formasha/calculus/%s.pdf",$1);
} else {
	die sprintf("cannot parse \"%s\"\n",$fn);
}
