#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: backupDreampirates.pl
#
#        USAGE: ./backupDreampirates.pl  
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
#      CREATED: 10/24/18 13:38:26
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Data::Dumper;
use MongoDB;


#global const's
my $SAVETODIR = "/Users/oleksiileontiev/dreampiratesBackup";
my $SUFF = "dup";
#procedures
sub myExec{
	my $cmd = shift;
	printf(STDERR "exec: _%s\n",$cmd);
	system($cmd);
}
sub getLP{
	my $mongoClient = shift;
	my @piratesdata = split(":",$mongoClient->ns("admin.passwords")->find_one({key=>"DREAMPIRATES"})->{value});
	return (
		login=>$piratesdata[0],password=>$piratesdata[1],
	);
}
sub getCurrentDateString{
	(my $sec,my $min,my $hour,my $mday,my $mon,my $year,my $wday,my $yday,my $isdst) = localtime();
	return sprintf("%04d%02d%02d",1900+$year,$mon+1,$mday);
}
sub populateDP{
	my $piratesdata = shift;
	$piratesdata->{host} = "52.194.196.186";
	$piratesdata->{port} = 27017;
	$piratesdata->{dbname} = "tokyoKomachi";
	return $piratesdata;
}
#main
my $mongoClient = MongoDB->connect();
my %piratesdata = getLP($mongoClient);
printf(STDERR "piratesdata=%s\n",Dumper(\%piratesdata));
%piratesdata = %{populateDP(\%piratesdata)};
my $outputDirPath = sprintf("%s/mongodump%s",$SAVETODIR,getCurrentDateString());
while(-e $outputDirPath){
	$outputDirPath = $outputDirPath . $SUFF;
	printf(STDERR "regenerated dir name: %s\n",$outputDirPath);
}
myExec(sprintf("mongodump  --gzip --username %s --password %s --host %s --port %d --db %s --out %s",
		$piratesdata{login},$piratesdata{password},$piratesdata{host},$piratesdata{port},$piratesdata{dbname},
		$outputDirPath));
