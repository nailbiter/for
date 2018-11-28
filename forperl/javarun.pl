#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: javarun.pl
#
#        USAGE: ./javarun.pl  
#
#  DESCRIPTION: execute and run java
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 11/28/18 22:29:21
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use File::Basename;


#global const's
my $TESTFLAG = 0;
#global var's
#procedurs
sub myExec{
	(my $cmd) = @_;
	printf("exec: _%s\n",$cmd);
	unless($TESTFLAG){
		system($cmd);
	}
}

#main
(my $src) = @ARGV;
(my $basename, my $dir, my $ext) = fileparse($src, qr/\.[^.]*/);
myExec(sprintf("javac %s",$src));
#printf("dir: %s\n",$dir);
myExec(sprintf("java %s%s","",$basename));
