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
use JSON;
use JSON::Parse 'parse_json';
use HTTP::Request;
use LWP::UserAgent;
use MongoDB;
use Data::Dumper;
use Text::TabularDisplay;
use Getopt::Long;
use File::Basename;
use autodie;


#global const's
my $DEFAULTCONFIGFILE = "trello.json";
my %METHODS = (
	branch=>{
		description=>"get branch name",
	},
	help=>{
		description=>"display this message",
	},
	commit=>{
		description=>"make a commit",
	},
	push=>{
		description=>"git push",
	}
);
#global var's
my $Testmode = 0;
#procedures
$METHODS{branch}->{func} = sub{
	my $trelloMsg = getTrelloMsgFromFile();
	printf(STDERR "trelloMsg: %s",$trelloMsg) if $Testmode;
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
sub myExec{
	(my $cmd, my %aux) = @_;
	if(defined $aux{dir}){
		$cmd = sprintf("cd %s && %s",$aux{dir},$cmd);
	}
	printf(STDERR "exec: _%s\n",$cmd);
	if(not $Testmode){
		system($cmd);
	}
}
$METHODS{commit}->{func} = sub {
	my %cmdline = @_;
	my %params;
	($params{trelloKey},$params{trelloToken}) = getTrelloPasswords();

	if(defined($cmdline{url})){
		printf(STDERR "url branch with url=%s\n",$cmdline{url});
		$params{url} = $cmdline{url};
		$params{trelloTitle} = getTitle(%params);
		doCommit(%params);
	} else {
		printf(STDERR "configfile branch with configfile=%s\n",$cmdline{configfile});
		open my $fh, '<', $cmdline{configfile} or 
			die sprintf("error opening %s\nerror=%s\n",$cmdline{configfile},$!);
		my $data = do { local $/; <$fh> };
		my $json = parse_json($data);
		close($fh);
		printf(STDERR "got json: %s\n",Dumper($json));
		$params{url} = $$json{cardurl};
		$json->{pulledData}->{trelloTitle} = $params{trelloTitle} = getTitle(%params);
		writeData($json,$cmdline{configfile});
		doCommit(%params);
		if(exists $$json{dependencies}){
			for(@{$$json{dependencies}}){
				printf(STDERR "\tdependency: %s\n",$_);
				doCommit(%params, dir=>$_);
			}
		}
	}
};
sub writeData{
	(my $json,my $filename) = @_;
	open my $fh, '>', $filename;
	my $data = to_json($json,{pretty=>1});
	print $fh $data;
	close($fh);
}
$METHODS{push}->{func} = sub {
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
sub doCommit{
	my %args = @_;
	(my $trelloMsg, my $trelloTitle) = @args{'url','trelloTitle'};
	printf(STDERR "trello card url: %s",$trelloMsg);
	my $pref = '';
	if(exists($args{dir})){
		$pref = sprintf("cd %s &&",$args{dir});
	}

	my $filesChanged =`$pref git status -s --untracked-files=no`;
	my $commitMsg = sprintf("%s\nfiles changed:\n%s\ntrello card: %s",$trelloTitle,$filesChanged,$trelloMsg);
	my $command = sprintf("git commit -a -m \"%s\"",$commitMsg);
	myExec($command,dir=>$args{dir});
}
sub getBranchName{
	(my $URL,my $trelloKey,my $trelloToken) = @_;
	$URL =~ /([0-9a-zA-Z]*)$/;
	my $code = $1;
	my $url = sprintf("https://api.trello.com/1/cards/%s?key=%s&token=%s",$code,$trelloKey,$trelloToken);
	printf("url: %s\n",$url) if $Testmode;
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
	my %args = @_;
	(my $URL,my $trelloKey,my $trelloToken) = @args{"url","trelloKey","trelloToken"};
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
	my $client = MongoDB->connect();
	my $secret = $client->ns("admin.passwords");
	my $key = $secret->find_one({key=>'TRELLOKEY'})->{'value'};
	printf(STDERR "key: %s\n",$key) if $Testmode;
	my $token = $secret->find_one({key=>'TRELLOTOKEN'})->{'value'};
	printf(STDERR "token: %s\n",$token) if $Testmode;
	return ($key,$token);
}
sub getTrelloMsgFromFile{
	open my $fh, '<', $_[0] or die "error opening $_[0] $!";
	my $data = do { local $/; <$fh> };
	return sprintf("https://trello.com/c/%s",$data);
}

#main
my %cmdline;
GetOptions(
	"url=s" =>\$cmdline{url},
	"method=s" =>\$cmdline{method},
	"configfile=s" => \$cmdline{configfile},
	"testmode=i" => \$Testmode,
);
$cmdline{method} //= "commit";
unless(defined($cmdline{configfile}) || defined($cmdline{url})){
	if(-e $DEFAULTCONFIGFILE){
		$cmdline{configfile} = $DEFAULTCONFIGFILE;
	} else {
		die "no config file found!";
	}
}
printf(STDERR "cmdline=%s\n",Dumper(\%cmdline));
$METHODS{$cmdline{method}}->{func}->(%cmdline);