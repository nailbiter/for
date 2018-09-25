#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: pluralizator.pl
#
#        USAGE: ./pluralizator.pl  
#
#  DESCRIPTION: pluralizator
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/25/18 09:55:52
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use MongoDB;

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");

#global var's
my $client = MongoDB->connect();
my $users = $client->ns("admin.gender");

#procedures
sub firstPhase{
	my $all_users = $users->find;
	while(my $next=$all_users->next){
		my $noun = $$next{key};
		next if $$next{value}=~/^Found/;
		print "$noun\n";
		my $res = `duden -g Plural $noun|head -n1|awk -F\"|\" '{print \$2}'|xargs`;
		chomp($res);
		printf("res: %s, len: %d\n",$res,length($res));
		print "-----------------------\n";
	}
}
sub secondPhase{
	while(<>){
		my $line1 = $_;
		chomp($line1);
		my $line2 = <>, my $line3 = <>;
		chomp($line2);
		printf("line1: %s\nline2: %s\n",$_,$line2);
		#$all_users->find({key=>$line1});
		$users->update_one({key => $line1}, {'$set' => {'plural' => $line2}});
	}
}

#main
firstPhase();
