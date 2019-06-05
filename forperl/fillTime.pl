#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: fillTime.pl
#
#        USAGE: ./fillTime.pl  
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
#      CREATED: 2019年06月04日 20時50分14秒
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use FindBin;
use MongoDB;
use Data::Dumper;
use DateTime;
require "$FindBin::Bin/util.pl";


#global const's
my $TIMEINTERVALMINS = 30;
my $SECRETFILENAME = "secret.txt";
my %METHODS = (
	TIME => {
		keys=>["start","end","category"],
		description=>"start/end=mmddHHMM",
		callback => sub {
			(my $envref) = @_;
			my %Environment = %$envref;
			(my $start, my $end, my $category) = @Environment{"START","END","CATEGORY"};
			my $coll = getMongoClient()->get_database("logistics")->get_collection("alex.time");
			my @parsedTime;
			for my $pt ($start, $end){
#				printf("pt: %s\n",$pt);
				if($pt =~ /(\d\d)(\d\d)(\d\d)(\d\d)/) {
					my $date = DateTime->new(
						month=>$1, day=> $2, hour=> $3, minute=> $4, year=>2019,
					);
					push (@parsedTime, $date);
					printf("%s\n",$date->datetime)
				} else {
					die sprintf("invalid format for date: %s\n",$pt);
				}
			}

#			printf("parsedTime: %s\n",Dumper(\@parsedTime));
#			printf("start: %s\nend: %s\ncat: %s\ntest: %d",$start,$end,$category,$envref->{TESTFLAG});
			($start,$end) = @parsedTime;
			my $date = $start
#			while(...){
#				$start
#			}
		},
	}
);
#global var's
my %Environment;
#procedures
sub getMongoClient{
  	my $pass = path($SECRETFILENAME)->slurp_utf8;
	chomp $pass;
#	printf("pass: %s\n",$pass);
	my $client = MongoDB->connect(sprintf("mongodb://%s:%s\@ds149672.mlab.com:49672/logistics",
			"nailbiter",$pass));
	return $client;
}

#main
my @args = (
	"start=s",
	"end=s",
	"category=s",
	"testflag",
);
ParseCommandLine(\%Environment,@args);
Process(
	env=>\%Environment,
	methods=>\%METHODS,
	argv=>\@ARGV,
#	parseJsons=>[$DEFAULTCONFIGFILE,$LOCALSTORE],
);
