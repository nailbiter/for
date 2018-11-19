#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: backupLocalDB.pl
#
#        USAGE: ./backupLocalDB.pl  
#
#  DESCRIPTION: backup admin
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 11/19/18 20:21:22
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;


#global const's
my $SAVETODIR = '/tmp/localmongo';
my $IP = '10.111.4.34';
my $REMOTEDIRNAME = 'localmongodump';
#global var's
my $Testflag = 0;
#procedures
sub myExec{
	my $cmd = shift;
	printf(STDERR "exec: _%s\n",$cmd);
	system($cmd) unless($Testflag);
}
sub getCurrentDateString{
	(my $sec,my $min,my $hour,my $mday,my $mon,my $year,my $wday,my $yday,my $isdst) = localtime();
	return sprintf("%04d%02d%02d",1900+$year,$mon+1,$mday);
}

#main
GetOptions(
	"testflag=i" => \$Testflag,
);
my $dirname = sprintf("%s/mongodump%s",$SAVETODIR,getCurrentDateString());
myExec(sprintf("mongodump -d admin --gzip --out %s",$dirname));
myExec(sprintf("scp -r %s nailbiter\@%s:~/%s/",$dirname,$IP,$REMOTEDIRNAME));
