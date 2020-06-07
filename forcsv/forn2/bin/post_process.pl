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
use Path::Tiny qw(path);


#main
my $skip_fn;
my $save_skip;
GetOptions(
	"skip=s" => \$skip_fn,
	"save_skip" => \$save_skip,
);
my $skip = $skip_fn ? path($skip_fn)->slurp_utf8 : 0;

printf(STDERR "skip: %d\n",$skip);
my $i = 0;
my $count = 0;
while(<>) {
	chomp;
	if($i>=$skip) {
		$count++;
		printf("%s\t\n",$_);
	}
	$i++;
}
printf(STDERR "%d words spit\n",$count);
if( $save_skip && $skip_fn ) {
	path($skip_fn)->spew($i);
}
