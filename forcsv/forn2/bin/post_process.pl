#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: post_process.pl
#
#        USAGE: cat dect<i>.csv | ./bin/post_process.pl | pbcopy
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
#      CREATED: 05/06/2020 15:54:05
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;


#main
my $skip;
GetOptions("skip=n" => \$skip);
$skip //= 0;

printf(STDERR "skip: %d\n",$skip);
my $i = 0;
while(<>) {
	chomp;
	if($i>=$skip) {
		printf("%s\t\n",$_);
	}
	$i++;
}
