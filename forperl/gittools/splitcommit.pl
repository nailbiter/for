#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: splitcommit.pl
#
#        USAGE: ./splitcommit.pl  
#
#  DESCRIPTION: inspired by <https://emmanuelbernard.com/blog/2014/04/14/split-a-commit-in-two-with-git/>
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 07/23/19 12:07:22
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Data::Dumper;
use Git;


#main
#my $version = Git::command_oneline('status');
my $repo = Git->repository();
my @revs = $repo->command("status");
#print(Dumper(\@revs));
my @res;
for my $line (@revs) {
	if( $line =~ /modified:\s+(.*)$/ ) {
		push(@res,$1);
	}
}
#print(Dumper(\@res));
for(@res) {
	printf("adding %s\n",$_);
	$repo->command("add",$_);
	$repo->command("commit",sprintf("--message=\"%s\"",$_));
}
printf("%d commits done",scalar(@res));
