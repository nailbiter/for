#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: exec.pl
#
#        USAGE: ./exec.pl <command-name> [command-options]
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
#      CREATED: 03/23/19 11:29:43
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use FindBin;
use Cwd;
use Data::Dumper;


#global const's
my @DIRSTOSEARCH = (
	"$FindBin::Bin",
	getcwd().'/scripts/pl',
);
#global var's
#procedures
sub MyExec {
	(my $cmd,my $testflag, my %aux) = @_;
	if(defined $aux{dir}){
		$cmd = sprintf("cd %s && %s",$aux{dir},$cmd);
	}
	printf(STDERR "exec: _%s\n",$cmd);
	if(not $testflag){
		system($cmd);
	}
}

#main
(my $cmdname, my @rest) = @ARGV;
#printf("cmd: %s\nargs: %s\n",$cmdname,Dumper(\@rest));
for(reverse(@DIRSTOSEARCH)){
	my $fn = sprintf("%s/%s.pl",$_,$cmdname);
#	printf("checking %s...\n",$fn);
	if(-e $fn) {
		printf(STDERR "found %s!\n",$fn);
		MyExec(
			sprintf("%s %s",$fn,join(' ',@rest)),
#			1,
			0,
		);
		last;
	}
}
