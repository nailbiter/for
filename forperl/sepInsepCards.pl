#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: sepInsepCards.pl
#
#        USAGE: ./sepInsepCards.pl  
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
#      CREATED: 10/30/18 16:18:07
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
my @SETTINGS = (
	{
		url=>"http://germanforenglishspeakers.com/prepositions/accusative-prepositions/",
		type=>"ACC",
	},
	{
		url=>"http://germanforenglishspeakers.com/prepositions/dative-prepositions/",
		type=>"DAT",
	},
	{
		url=>"http://germanforenglishspeakers.com/prepositions/genitive-prepositions/",
		type=>"GEN",
	},
	{
		url=>"http://germanforenglishspeakers.com/prepositions/two-way-prepositions/",
		type=>"ACCDAT",
		searchattribs=>{ depth=>1, count=>0 },
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
	} else {
		printf("response was %s!\n",$sResponse->is_success);
	}
	if(1){
		printf("raw: %s\n",$sPage);
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
sub standardRowProcess{
	(my $row,my $records,my $sett) = @_;
	map {processString($_)} @$row;

	my %hash = (
		particle=>$row->[0],
		type=>($sett->{type}),
		examples=>$row->[2],
		english=>$row->[1],
	);
	printf(STDERR "%s\n",Dumper(\%hash));
	push(@$records,\%hash);
}
sub getParticles{
	my @particles;
	for(@SETTINGS){
		my %sett = %{$_};
		$sett{searchattribs} //= {
			depth=>0, count=>0,
		};
		$sett{rowprocess} //= \&standardRowProcess;

		my $te = HTML::TableExtract->new( %{$sett{searchattribs}} );
		$te->parse(getHtml($sett{url}));
		my $cache;
		my $ts = $te->tables;
		foreach my $ts ($te->tables) {
			printf(STDERR "\t%s\n","table");
			my $index = -1;
			foreach my $row ($ts->rows) {
				printf(STDERR "\t%s\n",sprintf("row: %s",join(",",@$row)));
				$index++;
				next if($index eq 0);

				if(defined $row->[0]){
					$cache = $row->[0];
				} else {
					$row->[0] = $cache;
				}

				$sett{rowprocess}->($row,\@particles,\%sett);
			}
		}
	}
	return @particles;
}
sub main{
	my $fn="/Users/oleksiileontiev/Downloads/german_verbs03.htm";
	my @data = (
		{
			sett=>{depth=>1,count=>6, },
			type=>'insep',
		},
		{
			sett=>{depth=>1,count=>7, },
			type=>'sep',
		},
		{
			sett=>{depth=>1,count=>8, },
			type=>'mixed',
		},
	);
	my @res;
	for(@data){
		my $te = HTML::TableExtract->new( %{$_->{sett}}  );
		$te->parse_file($fn);
		my $cache;
		my $ts = $te->tables;
		if(scalar($te->tables)!=1){
			die "too many tables for ".Dumper($_);
		}
		foreach my $ts ($te->tables) {
			printf(STDERR "\t%s\n","table");
			my $cache;
			my @rows = $ts->rows;
			shift(@rows);
			foreach my $row (@rows) {
#				if(!(defined $row->[0])){
#					$row->[0] = $cache;
#				} elsif(($row->[0]) =~ /\s+/ ) {
#					$row->[0] = $cache;
#				} else {
#					$cache = $row->[0];
#				}
				if(defined $row->[0] && (length($row->[0])>0) && ($row->[0] !~ /^\h+$/)){
					printf("%s\t%s\n",$row->[0],$_->{type});
				}
				printf(STDERR "row: %s\n",Dumper($row));
			}
			printf(STDERR "%s\n","="x10);
		}
	}
}

#main
main();
