#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: propositionCards.pl
#
#        USAGE: ./propositionCards.pl  
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
#      CREATED: 10/19/18 08:13:30
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use LWP::UserAgent;
use HTML::TableExtract;
use Data::Dumper;

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");
binmode(STDERR, ":utf8");

#global const's
my %SETTINGS = (
	"http://germanforenglishspeakers.com/prepositions/accusative-prepositions/"=>{
		type=>"ACC",
	},
	"http://germanforenglishspeakers.com/prepositions/dative-prepositions/"=>{
		type=>"DAT",
	},
	"http://germanforenglishspeakers.com/prepositions/genitive-prepositions/" =>{
		type=>"GEN",
	},
);
#global var's
#procedures
sub getHtml{
	my $URL = $_[0];
	my $oHTTPAgent = new LWP::UserAgent;
	my $oRequest = HTTP::Request->new('GET');
	$oRequest->url($URL);
	my $sResponse = $oHTTPAgent->request($oRequest);
	my $sPage;
	if ($sResponse->is_success) {
		$sPage = $sResponse->content;
	}
	return $sPage;
}
sub processString{
	for($_[0]){
	  chomp;
	  s/Ã¤/ä/g;
	  s/Ã¼/ü/g;
	  s/â/.../g;
	  s/Ã/ß/g;
	}
	return $_[0];
}
#main
my @particles;
for(keys(%SETTINGS)){
	my $te = HTML::TableExtract->new( depth => 0, count => 0 );
	my $sett = $SETTINGS{$_};
	$te->parse(getHtml($_));
	my $cache;
	my $ts = $te->tables;
	foreach my $ts ($te->tables) {
		my $index = -1;
		foreach my $row ($ts->rows) {
			$index++;
			next if($index eq 0);

			if(defined $row->[0]){
				$cache = $row->[0];
			} else {
				$row->[0] = $cache;
			}

			map {processString($_)} @$row;

			my %hash = (
				particle=>$row->[0],
				type=>($sett->{type}),
				examples=>$row->[2],
				english=>$row->[1],
			);
			printf(STDERR "%s\n",Dumper(\%hash));
			push(@particles,\%hash);
		}
	}
}
for(@particles){
	printf("%s\t%s\n",$_->{particle},$_->{type});
}
#XJdPEZPN
