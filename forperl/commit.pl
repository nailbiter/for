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

#global const's
my $TESTMODE = 0;
my $TRELLOFILENAME = "trello.txt";
my %METHODS = (
	branch=>{
		description=>"get branch name",
	},
	help=>{
		description=>"display this message",
	},
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
	open my $fh, '<', $TRELLOFILENAME or die "error opening $TRELLOFILENAME: $!";
	my $data = do { local $/; <$fh> };
	return sprintf("https://trello.com/c/%s",$data);
}

#main
my $trelloMsg;
if(!$ARGV[0]){
	print "dYvTXBzVpz\n" if $TESTMODE;
	$trelloMsg = getTrelloMsgFromFile();
}elsif($ARGV[0]=~m/^https:/){
	print "RSauQpiWVA\n" if $TESTMODE;
	$trelloMsg = $ARGV[0];
}elsif(grep( /^$ARGV[0]$/, keys(%METHODS) )){
	printf("got method %s\n",$ARGV[0]) if $TESTMODE;
	$METHODS{$ARGV[0]}->{func}->();
	exit();
} else {
	print "kgDMdUyaIJ\n" if $TESTMODE;
	printf("argv[0]=\"%s\"\n",$ARGV[0]);
	$trelloMsg = sprintf("https://trello.com/c/%s",$ARGV[0]);
}

(my $trelloKey,my $trelloToken) = getTrelloPasswords();
printf("trello card url: %s",$trelloMsg);
my $trelloTitle=getTitle($trelloMsg,$trelloKey,$trelloToken);

my $command = sprintf("git commit -a -m \"%s\"",
    sprintf("%s\nfiles changed:\n%s\ntrello card: %s",$trelloTitle,$filesChanged,$trelloMsg));
if($TESTMODE){
	print $command;
	exit;
}else{
	system($command);
}
