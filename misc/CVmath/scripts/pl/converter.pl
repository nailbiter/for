#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: converter.pl
#
#        USAGE: ./converter.pl  
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
#      CREATED: 2019年02月22日 19時43分34秒
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Data::Dumper;
use String::Util qw(trim);


#main
(my $from, my $to) = @ARGV;
if( ($from =~ /\.csv$/) && ($to =~ /\.html$/) ) {
	(my $configfile) = ($from);
	my @tsv;
	if ( open my $fh, '<', $configfile ) {
		my $data = do { local $/; <$fh> };
		@tsv = split("\n",$data);
	} else {
		warn sprintf("error opening %s\nerror=%s\n",$configfile,$!);
	}
	for(@tsv) {
		my @l = split("\t",$_);
		$_ = \@l;
	}
	(my $headers,my @tail) = @tsv;
	my @res;
	for my $item (@tail) {
		my %hash;
		for my $i (1..(scalar @$item)) {
			$hash{$$headers[$i-1]} = trim($$item[$i-1]);
		}
		push(@res,\%hash);
	}
	printf("%s\n",Dumper(\@res));
} else {
	printf("don't know how to convert \"%s\"->\"%s\"\n",$from,$to);
}
