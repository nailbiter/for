#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: backupMongoMLAB.pl
#
#        USAGE: ./backupMongoMLAB.pl [WHERETO/]
#
#  DESCRIPTION: back up mongodb hosted at mlab (run it once per day)
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 10/05/18 10:49:35
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use MongoDB;
use Getopt::Long;

#global const's
my $TESTFLAG = 0;
#my @MONTHNAMES = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );
#my @WEEKDAYNAMES = qw(Sun Mon Tue Wed Thu Fri Sat Sun);

#global var's

#procedures
sub myExec{
	(my $cmd) = @_;
	printf("will exec: \"%s\"\n",$cmd);
	if(not $TESTFLAG){
		system($cmd);
	}
}
sub getCurrentDateString{
	(my $sec,my $min,my $hour,my $mday,my $mon,my $year,my $wday,my $yday,my $isdst) = localtime();
	return sprintf("%04d%02d%02d",1900+$year,$mon+1,$mday);
}

#main
my $client = MongoDB->connect();
my $mongoPassword = $client->ns("admin.passwords")->find_one({key=>"MONGOMLAB"})->{value};
#$client = MongoDB->connect(sprintf("mongodb://%s:%s@ds149672.mlab.com:49672/logistics","nailbiter",$mongoPassword));
printf("curDate: %s\n",getCurrentDateString());
printf("dest: %s\n",$ARGV[0]);
my $outputDirPath = sprintf("%smongodump%s",$ARGV[0],getCurrentDateString());
printf("outputDirPath %s\n",$outputDirPath);
myExec(sprintf("mkdir -p %s",$outputDirPath));
myExec(sprintf("mongodump --uri %s --gzip --out %s",
	sprintf("mongodb://%s:%s\@ds149672.mlab.com:49672/logistics","nailbiter",$mongoPassword),
	$outputDirPath));
