#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: downloader.pl
#
#        USAGE: ./downloader.pl  
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
#      CREATED: 11/21/18 16:50:35
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;


#global var's
my $Testflag = 0;
#procedures
sub myExec{
	(my $cmd) = @_;
	printf(STDERR "exec: _%s\n",$cmd);
	if(not $Testflag){
		system($cmd);
	}
}
#main
my $method;
my %arghash;
GetOptions(
	"testflag=i" => \$Testflag,
	"method=s" => \$method,
	"arg=s" => \$arghash{arg},
);
if($method eq "makefile"){
	for('A'..'Z'){
#		printf("%s.html: downloader.pl\n\tperl \$< --method html --arg %s > \$@\n",$_,$_);
		printf("%s.html: downloader.pl\n\twget \"https://en.wiktionary.org/w/index.php?title=Category:German_uncountable_nouns&from=%s\" -O %s.html\n\ttouch \$@\n",$_,$_,$_,$_);
	}
} elsif($method eq 'html') {
#	myExec(sprintf("wget \"https://en.wiktionary.org/w/index.php?title=Category:German_uncountable_nouns&from=%s\" -o \$<"));
} else {
	for('A'..'Z'){
		print($_." ");
	}
}
