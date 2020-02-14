#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: Makefile.PL
#
#        USAGE: ./Makefile.PL  
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
#      CREATED: 12/09/2019 15:10:12
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use ExtUtils::MakeMaker;
 
#main
WriteMakefile(
    NAME            => 'EHxzFeoHi::TrelloWrapper',
    VERSION_FROM    => 'lib/EHxzFeoHi/TrelloWrapper.pm',
	PREREQ_PM => {
		"EHxzFeoHi::Trello"=>0
	}
);
