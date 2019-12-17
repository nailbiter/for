#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: Omj7Yi8o_X.pl
#
#        USAGE: ./Omj7Yi8o_X.pl  
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
#      CREATED: 17.12.2019 22:19:47
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
#use JSON;

#main
my @lines = <>;
map {chomp $_} @lines;
@lines = map {s/\r//r} @lines;
(my $header_, my $stateCodes_,my @rest) = @lines;
print STDERR $stateCodes_,"\n";
my @stateCodes = grep {/\d+/} split(/,/,$stateCodes_);
my @inputNames = grep {!/^$/} split(/,/,$header_);
my %stateNameCodeCorr;
my $stateBitsNum = 0;
for my $i (-scalar(@stateCodes)..-1) {
	my @bits = split(//,$stateCodes[$i]);
	$stateNameCodeCorr{$inputNames[scalar(@inputNames)+$i]} = [@bits];
	if(@bits >= $stateBitsNum) {
		$stateBitsNum = @bits;
	}
}
@inputNames = @inputNames[0..(scalar(@inputNames)-scalar(@stateCodes)-1)];
#print STDERR to_json(\%stateNameCodeCorr),"\n";
#print STDERR to_json(\@inputNames),"\n";
print STDERR $stateBitsNum,"\n";

my $first = 1;
my @res = ([]) x $stateBitsNum;
for(@rest) {
	my @data =  split(/,/);
	if($data[0] !~ /^$/ && !$first) {
		last;
	}
	$first = 0;
	shift @data;
	my %inputs;
	my @inputValues = @data[0..scalar(@inputNames)-1];
	@inputs{@inputNames} = @inputValues;
	my @states = @data[scalar(@inputNames)..(@data-1)];
	for(@states) {
		if(not defined $stateNameCodeCorr{$_}) {
			die $_;
		}
	}
	
	for my $i (0..(@states-1)) {
		my @bits = @{$stateNameCodeCorr{$states[$i]}};
		for(0..($stateBitsNum-1)) {
			my @curArr = @{$res[$_]};
			if($bits[$_]) {
				my @minterm;
				for(sort keys %inputs) {
					push @minterm, sprintf($inputs{$_}?"%s":"!%s",$_);
				}

				my @stateCode = split(//,$stateCodes[$i]);
				for my $j (0..($stateBitsNum-1)) {
					push @minterm, sprintf($stateCode[$j]?"s%d":"!s%d",$j);
				}

				push @curArr,sprintf("(%s)",join(" & ",@minterm));
			}
			$res[$_] = \@curArr;
		}
	}
}
for(@res) {
	print join(" || \n\t",@$_),"\n\n";
}
