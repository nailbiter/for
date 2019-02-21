#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: commit.pl
#
#        USAGE: ./commit.pl [https://trello.com/c/]dzZ54M87
#        		-- make commit with card
#             : ./commit.pl
#
#  DESCRIPTION: script for git commits automatization
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 10/12/18 19:25:54
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
#use autodie;
use JSON;
use JSON::Parse 'parse_json';
use HTTP::Request;
use LWP::UserAgent;
use Data::Dumper;
use File::Basename;
use FindBin;
require "$FindBin::Bin/commit.aux.pl";


#global const's
my $DEFAULTCONFIGFILE = "trello.json";
my $DEFAULTMETHOD = "commit";
our %METHODS = (
	BRANCH=>{
		description=>"get branch name",
	},
	HELP=>{
		description=>"display this message",
		func => \&printHelp,
	},
	COMMIT=>{
		description=>"make a commit",
	},
	PUSH=>{
		description=>"git push",
	},
	PULL => {},
);
my @LEFTOVERPROCESSORS = (
	{
		#config file
		PREDICATE => sub {
			(my $configfile) = @_;
			return ($configfile =~ /\.json$/);
		},
		CALLBACK => \&processConfigFile,
	},
	{
		#method
		PREDICATE => sub {
			return 1;
		},
		CALLBACK => \&processMethod,
	},
);
#global var's
our %Environment;
my $SaveConfigToFilename = '';
#procedures
sub processConfigFile {
	(my $configfile) = @_;
	printf("config file: %s\n",$configfile);

	#FIXME $configfile -> basename($configfile)
	if( ( $configfile ne $DEFAULTCONFIGFILE ) and ( length($SaveConfigToFilename) == 0 ) ) {
		$SaveConfigToFilename = $configfile;
	}

	my $json = {};
	if ( open my $fh, '<', $configfile ) {
		my $data = do { local $/; <$fh> };
		$json = parse_json($data);
	} else {
		warn sprintf("error opening %s\nerror=%s\n",$configfile,$!);
	}
	for( keys %$json ) {
		$Environment{uc($_)} = $json->{$_};
	}
	printf("env: %s\n",Dumper(\%Environment));
}
sub processMethod {
	(my $method) = @_;
	$method = uc($method);
	if( not defined $METHODS{$method} ) {
		$method = 'HELP';
	}
	printf("_method: %s\n",$method);
	$METHODS{$method}->{func}->(%Environment);
}
$METHODS{BRANCH}->{func} = sub{
	my $trelloMsg = getTrelloMsgFromFile();
	printf(STDERR "trelloMsg: %s",$trelloMsg) if $Environment{TESTFLAG};
	(my $trelloKey,my $trelloToken) = getTrelloPasswords();
	print getBranchName($trelloMsg,$trelloKey,$trelloToken)."\n";
};
$METHODS{COMMIT}->{func} = sub {
	#my %cmdline = @_;
	#my %params;
	#@params{'trelloKey','trelloToken'} = getTrelloPasswords();

	#if(defined($cmdline{url})){
	#	printf(STDERR "url branch with url=%s\n",$cmdline{url});
	#	$params{url} = $cmdline{url};
	#	$params{trelloTitle} = getTitle(params=>\%params);
	#	doCommit(%params);
	#} else {
		#printf(STDERR "configfile branch with configfile=%s\n",$cmdline{configfile});
		#open my $fh, '<', $cmdline{configfile} or 
		#	die sprintf("error opening %s\nerror=%s\n",$cmdline{configfile},$!);
		#my $data = do { local $/; <$fh> };
		#my $json = parse_json($data);
		#close($fh);
		#printf(STDERR "got json: %s\n",Dumper($json));
		#$params{url} = GetUrlFromConfigfile(\%Environment);
		#$params{URL} = $Environment{CARDURL};
		my $title = '';
		my $url = $Environment{CARDURL};
		if( defined $Environment{TITLE} ) {
			$title = $Environment{TITLE};
		} else {
			$title = GetTrelloCardTitle($Environment{CARDURL},
				getTrelloPasswords(),
				sub {
					if( defined $Environment{PULLEDDATA} ) {
						$url = '';
						return $Environment{PULLEDDATA}->{TRELLOTITLE};
					} else {
						die "hard";
					}
				}
			);
		}
		$Environment{PULLEDDATA}->{TRELLOTITLE} = $title;
		#$Environment{TITLE} //= GetTrelloCardTitle($Environment{CARDURL},@params{'trelloKey','trelloToken'});
		#$params{TRELLOTITLE} = getTitle(params=>\%params,local=>$json,cmdline=>\%cmdline);

		DoCommit($url,$title);
		my $json = \%Environment;
		if(exists $$json{dependencies}){
			for(@{$$json{dependencies}}){
				printf(STDERR "\tdependency: %s\n",$_);
				#FIXME
				#doCommit(%params, dir=>$_);
			}
		}
	#}
};
$METHODS{PUSH}->{func} = sub {
	my %cmdline = @_;
	unless(defined($cmdline{configfile})){
		myExec("git push");
	} else {
		printf(STDERR "configfile branch with configfile=%s\n",$cmdline{configfile});
		open my $fh, '<', $cmdline{configfile} or 
			die sprintf("error opening %s\nerror=%s\n",$cmdline{configfile},$!);
		my $data = do { local $/; <$fh> };
		my $json = parse_json($data);
		printf(STDERR "got json: %s\n",Dumper($json));
		myExec("git push");
		if(exists $$json{dependencies}){
			for(@{$$json{dependencies}}){
				printf(STDERR "\tdependency: %s\n",$_);
				myExec("git push",dir=>$_);
			}
		}
	}
};
sub getBranchName{
	(my $URL,my $trelloKey,my $trelloToken) = @_;
	$URL =~ /([0-9a-zA-Z]*)$/;
	my $code = $1;
	my $url = sprintf("https://api.trello.com/1/cards/%s?key=%s&token=%s",$code,$trelloKey,$trelloToken);
	printf("url: %s\n",$url) if $Environment{TESTFLAG};
	my $req = HTTP::Request->new( GET=> $url );
	my $lwp = LWP::UserAgent->new;
	my $res = $lwp->request( $req );
	$res = parse_json($lwp->request( $req )->{_content});
	my $desc = $res->{desc};
	for(split("\n",$desc)){
		if(/^%BRANCH\s*(\w+)/){
			return $1;
		}
	}
}

#main
processConfigFile($DEFAULTCONFIGFILE);
ParseCommandLine(\%Environment,
	'testflag=n',
	'title=n',
);
$Environment{TESTFLAG} //= 0;

my @leftover = (scalar(@ARGV) > 0) ? @ARGV : ($DEFAULTMETHOD);
#@leftover = ($DEFAULTCONFIGFILE, @leftover);
for my $lo (@leftover) {
	my $wasProcessed = 0;
	foreach my $processor (@LEFTOVERPROCESSORS) {
		if( $processor->{PREDICATE}->($lo) ) {
			$processor->{CALLBACK}->($lo);
			$wasProcessed = 1;
			last;
		}
	}
	if( not $wasProcessed ) {
		printf("unknown leftover: \"%s\"\n",$lo);
	}
}
WriteData(\%Environment,(length($SaveConfigToFilename)>0)?$SaveConfigToFilename:$DEFAULTCONFIGFILE);
