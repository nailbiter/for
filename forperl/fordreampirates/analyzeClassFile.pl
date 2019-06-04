#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: analyzeClassFile.pl
#
#        USAGE: ./analyzeClassFile.pl  
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
#      CREATED: 2019年05月10日 18時58分51秒
#     REVISION: only <= argument, does not see members;
#===============================================================================

use strict;
use warnings;
use utf8;
use Path::Tiny;
use Data::Dumper;


#global const's
#global var's
#procedures

#main
my $argTypePairRegex = '[_a-zA-Z]+(:\s*[a-z\.A-Z]+)';
my $regex = 
	qr/^\s*(?<ACCESS_MODIFIER>private|public)?\s*(async)?\s*(?<FUNC_NAME>[a-zA-Z]+)\s*(=)?\s*((async)?\s*\((?<ARGLIST>\s*($argTypePairRegex)?(,\s*$argTypePairRegex)*\s*)\))?/;
for my $fn (@ARGV) {
	my $ft = path($fn)->slurp_utf8;
	my @res;
	for my $line (split("\n",$ft,)) {
		chomp $line;
		if($line =~ /$regex/) {
			printf("%s\n",$line);
			my @list = $line =~ /$regex/;
			my %parsed = %+;
			push(@res,\%parsed);
		}
	}

#	@res = grep {$_->{ACCESS_MODIFIER} eq "public"} @res;
#	printf("%s: %s\n", $fn, Dumper(\@res));
}
