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
#sub twoWayRowProcess{
#	(my $row,my $records,my $sett) = @_;
#	map {processString($_)} @$row;
#
#	my %hash = (
#		particle=>$row->[0],
#		type=>'fuck you',
#		examples=>$row->[2],
#		english=>$row->[1],
#	);
#	printf(STDERR "%s\n",Dumper(\%hash));
#	push(@$records,\%hash);
#}
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

#main
my @particles = getParticles();
my @res;
for(@particles){
	for($_->{english}){
		s/[\n\t]//g;
		s/ +/ /g;
	}
#	chomp($_->{english}) =~ s/,/, /g;
	push(@res,sprintf("%s (%s)\t%s",$_->{particle},$_->{english},$_->{type}));
}
my %hash   = map { $_, 1 } @res;
my @unique = keys %hash;
@unique = grep {$_ !~ /vs\./} @unique;
for(@unique){
	printf("%s\n",$_);
}
#XJdPEZPN
