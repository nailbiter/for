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
use JSON::Parse 'parse_json';
use HTTP::Request;
use LWP::UserAgent;
use MongoDB;
use Data::Dumper;
use Text::TabularDisplay;
use Getopt::Long;

#global const's
my $TESTMODE = 0;
my %METHODS = (
	branch=>{
		description=>"get branch name",
	},
	help=>{
		description=>"display this message",
	},
	commit=>{
		description=>"make a commit",
	}
);

#global var's
my $filesChanged =`git status -s --untracked-files=no`;
my $client = MongoDB->connect();

#procedures
$METHODS{branch}->{func} = sub{
	my $trelloMsg = getTrelloMsgFromFile();
	printf("trelloMsg: %s",$trelloMsg) if $TESTMODE;
	(my $trelloKey,my $trelloToken) = getTrelloPasswords();
	print getBranchName($trelloMsg,$trelloKey,$trelloToken)."\n";
};
$METHODS{help}->{func} = sub{
	my $t = Text::TabularDisplay->new(qw(method description));
	for(keys(%METHODS)){
		$t->add($_,$METHODS{$_}->{description});
	}
	print $t->render;
};
$METHODS{commit}->{func} = sub{
	my %cmdline = @_;
	my $trelloMsg;
	if(defined $cmdline{url}){
		$trelloMsg = $cmdline{url};
	} elsif ( -f "trello.txt") {
		printf(STDERR "found file %s\n","trello.txt");
		$trelloMsg = getTrelloMsgFromFile("trello.txt");
	} elsif ( -f "trello.json") {
		printf(STDERR "found file %s\n","trello.json");
		open my $fh, '<', "trello.json" or die "error opening trello.json $!";
		my $data = do { local $/; <$fh> };
		my $json = parse_json($data);
		printf(STDERR "got json: %s\n",Dumper($json));
		$trelloMsg = $$json{cardurl}
	} else {
		die sprintf("cannot parse cmdline\n");
	}

	(my $trelloKey,my $trelloToken) = getTrelloPasswords();
	printf(STDERR "trello card url: %s",$trelloMsg);
	my $trelloTitle=getTitle($trelloMsg,$trelloKey,$trelloToken);

	my $command = sprintf("git commit -a -m \"%s\"",
		sprintf("%s\nfiles changed:\n%s\ntrello card: %s",$trelloTitle,$filesChanged,$trelloMsg));
	myExec($command);
}
sub myExec{
	(my $cmd) = @_;
	printf("exec: _%s\n",$cmd);
	if(not $TESTMODE){
		system($cmd);
	}
}
sub getBranchName{
	(my $URL,my $trelloKey,my $trelloToken) = @_;
	$URL =~ /([0-9a-zA-Z]*)$/;
	my $code = $1;
	my $url = sprintf("https://api.trello.com/1/cards/%s?key=%s&token=%s",$code,$trelloKey,$trelloToken);
	printf("url: %s\n",$url) if $TESTMODE;
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
sub getTitle{
	(my $URL,my $trelloKey,my $trelloToken) = @_;
	$URL =~ /([0-9a-zA-Z]*)$/;
	my $code = $1;
	printf("code: %s\n",$code);
	my $url = sprintf("https://api.trello.com/1/cards/%s?key=%s&token=%s",$code,$trelloKey,$trelloToken);
	printf("url: %s\n",$url);
	my $req = HTTP::Request->new( GET=> $url );
	my $lwp = LWP::UserAgent->new;
	my $res = $lwp->request( $req );
	$res = parse_json($lwp->request( $req )->{_content});
	return $res->{name};
}
sub getTrelloPasswords{
	my $secret = $client->ns("admin.passwords");
	my $key = $secret->find_one({key=>'TRELLOKEY'})->{'value'};
	printf("key: %s\n",$key) if $TESTMODE;
	my $token = $secret->find_one({key=>'TRELLOTOKEN'})->{'value'};
	printf("token: %s\n",$token) if $TESTMODE;
	return ($key,$token);
}
sub getTrelloMsgFromFile{
	open my $fh, '<', $_[0] or die "error opening $_[0] $!";
	my $data = do { local $/; <$fh> };
	return sprintf("https://trello.com/c/%s",$data);
}
sub main{
	my %cmdline = @_;
	unless(exists($METHODS{$cmdline{method}})){
		die sprintf("uknown method %s\n",$cmdline{method});
	}
	printf("got method %s\n",$cmdline{method}) if($TESTMODE);
	$METHODS{$cmdline{method}}->{func}->(%cmdline);
}


#main
my %cmdline;
GetOptions(
	"url=s" =>\$cmdline{url},
	"method=s" =>\$cmdline{method},
	"configfile=s" => \$cmdline{configfile},
);
$cmdline{method} //= "commit";
main(%cmdline);
