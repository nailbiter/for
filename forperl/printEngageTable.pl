#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: printEngageTable.pl
#
#        USAGE: ./printEngageTable.pl  
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
#      CREATED: 08/08/19 23:17:22
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Digest::SHA1  qw(sha1 sha1_hex sha1_base64);


#global const's
my $CARD_ID = "5d1976494f4f482fd84c3e9c";

#main
printf("hi: %s\n", Digest::SHA1->new->add($CARD_ID)->hexdigest);
