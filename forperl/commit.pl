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
require "$FindBin::Bin/util.pl";


#global const's
my $BRANCHPREFIX = "alex_";
my $DEFAULTCONFIGFILE = "trello.json";
my $LOCALSTORE = ".pulled_data.json";
our %METHODS = (
	BRANCH=>{
		description=>"get branch name",
	},
	COMMIT=>{
		description=>"make a commit",
		isDefault => 1,
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
	printf(STDERR "config file: %s\n",$configfile);

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
	printf(STDERR "env: %s\n",Dumper(\%Environment));
}
sub processMethod {
	(my $method) = @_;
	$method = uc($method);
	if( not defined $METHODS{$method} ) {
		$method = 'HELP';
	}
	printf(STDERR "_method: %s\n",$method);
	$METHODS{$method}->{func}->(%Environment);
}
$METHODS{BRANCH}->{func} = sub{
	my $url = $Environment{CARDURL};
	if($url =~ /https:\/\/trello.com\/c\/([a-zA-Z]{8})/) {
		printf("%s%s\n",$BRANCHPREFIX,$1);
	} else {
		die sprintf("cannot parse url %s\n",$url);
	}
};
$METHODS{COMMIT}->{callback} = sub {
	my %Environment = %{$_[0]};
	my %card = (
		title => '',
		url => ComputeCardUrl(%Environment),
	);
	if( defined $Environment{TITLE} ) {
		$card{title} = $Environment{TITLE};
	} else {
		%card = (%card,GetTrelloCardTitle($card{url},
			getTrelloPasswords(),
			sub {
				if( defined $Environment{PULLEDDATA} ) {
					return (
						#url => '',
						title => $Environment{PULLEDDATA}->{TRELLOTITLE},
						checklist => [],
					);
				} else {
					die "hard";
				}
			}
		));
	}
	$Environment{PULLEDDATA}->{TRELLOTITLE} = $card{title};

	WriteData({PULLEDDATA=>$Environment{PULLEDDATA}},$LOCALSTORE) unless($Environment{TESTFLAG});
	my @args = @card{'url','title','checklist'};
	doCommit(@args);
	if(exists $Environment{DEPENDENCIES}){
		for(@{$Environment{DEPENDENCIES}}){
			my $dir = $_->{DIR};
			printf(STDERR "\tdependency: %s\n",$dir);
			doCommit(@args,$dir);
		}
	}
};
$METHODS{PULL}->{callback} = sub {
	my %Environment = %{$_[0]};
	myExec('git pull');
	if(exists $Environment{DEPENDENCIES}){
		for(@{$Environment{DEPENDENCIES}}){
			my $dir = $$_{DIR};
			my $depUrl = $$_{URL};
			printf(STDERR "\tdependency: %s\n",$dir);
			my $dirToCheck = sprintf("%s/.git",$dir);
			if( -e $dirToCheck and -d $dirToCheck ) {
				myExec('git pull',(dir=>$dir));
			} else {
				myExec(sprintf("cd %s/.. && git clone %s",$dir,$depUrl));
			}
		}
	}
};
$METHODS{PUSH}->{callback} = sub {
	my %Environment = %{$_[0]};
	my %cmdline = @_;
	unless(defined($cmdline{configfile})){
		MyExec("git push",$Environment{TESTFLAG});
	} else {
		printf(STDERR "configfile branch with configfile=%s\n",$cmdline{configfile});
		open my $fh, '<', $cmdline{configfile} or 
			die sprintf("error opening %s\nerror=%s\n",$cmdline{configfile},$!);
		my $data = do { local $/; <$fh> };
		my $json = parse_json($data);
		printf(STDERR "got json: %s\n",Dumper($json));
		MyExec("git push",$Environment{TESTFLAG});
		if(exists $$json{dependencies}){
			for(@{$$json{dependencies}}){
				printf(STDERR "\tdependency: %s\n",$_);
				MyExec("git push",$Environment{TESTFLAG},dir=>$_);
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
my @args;
for(qw( testflag title )) {
	push(@args, sprintf("%s=n",$_));
}
ParseCommandLine(\%Environment,@args);
Process(
	env=>\%Environment,
	methods=>\%METHODS,
	argv=>\@ARGV,
	parseJsons=>[$DEFAULTCONFIGFILE,$LOCALSTORE],
);
