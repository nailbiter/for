#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: converter.aux.pl
#
#        USAGE: ./converter.aux.pl  
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
#      CREATED: 2019年03月31日 16時33分05秒
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use String::Util qw(trim);


#global const's
#global var's
#procedures
sub LoadSimpleCsv {
	(my $configfile,my %aux) = @_;
	$aux{KEYPROCESSOR} //= sub {
		return $_[0];
	};

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
			$hash{$aux{KEYPROCESSOR}->($$headers[$i-1])} = trim($$item[$i-1]);
		}
		push(@res,\%hash);
	}
	return (
		HEADERS => $headers,
		RECORDS => \@res,
	);
}

#main
1;
