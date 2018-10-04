#!/usr/bin/perl

use strict;
use warnings;
use utf8;
use JSON::Parse 'parse_json';
use HTTP::Request;
use LWP::UserAgent;
use MongoDB;
use Data::Dumper;

#global var's
my $TESTMODE = 0;
my $filesChanged =`git status -s --untracked-files=no`;
my $trelloMsg="";
my $client = MongoDB->connect();
my $trelloKey;
my $trelloToken;

#procedures
sub getTitle{
	$_[0] =~ /([0-9a-zA-Z]*)$/;
	my $code = $1;
	printf("code: %s\n",$code);
	my $url = sprintf("https://api.trello.com/1/cards/%s?key=%s&token=%s",$code,$trelloKey,$trelloToken);
	printf("url: %s\n",$url);
	my $req = HTTP::Request->new( GET=> $url );
	my $lwp = LWP::UserAgent->new;
	my $res = $lwp->request( $req );
#	print Dumper($res->{_content}->{name});
	my $res = parse_json($lwp->request( $req )->{_content});
#	print Dumper($res);
	return $res->{name};
}
sub getTrelloPasswords{
	my $secret = $client->ns("admin.passwords");
	my $key = $secret->find_one({key=>'TRELLOKEY'})->{'value'};
	printf("key: %s\n",$key);
	my $token = $secret->find_one({key=>'TRELLOTOKEN'})->{'value'};
	printf("token: %s\n",$token);
	return ($key,$token);
}

#main
if(!$ARGV[0]){
	print "dYvTXBzVpz\n" if $TESTMODE;
	my $filename = "trello.txt";
	open my $fh, '<', $filename or die "error opening $filename: $!";
	my $data = do { local $/; <$fh> };
	$trelloMsg = sprintf("https://trello.com/c/%s",$data);
}elsif($ARGV[0]=~m/^https:/){
	print "RSauQpiWVA\n" if $TESTMODE;
	$trelloMsg = $ARGV[0];
}else{
	print "kgDMdUyaIJ\n" if $TESTMODE;
	printf("argv[0]=\"%s\"\n",$ARGV[0]);
	$trelloMsg = sprintf("https://trello.com/c/%s",$ARGV[0]);
}

printf("trello card url: %s",$trelloMsg);
($trelloKey,$trelloToken) = getTrelloPasswords();
my $trelloTitle=getTitle($trelloMsg);

my $command = sprintf("git commit -a -m \"%s\"",
    sprintf("%s \ntrello card: %s\nfiles changed:\n%s",$trelloTitle,$trelloMsg,$filesChanged));
if($TESTMODE){
	print $command;
	exit;
}else{
	system($command);
}
