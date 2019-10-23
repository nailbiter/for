#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: parseConferencePage.pl
#
#        USAGE: ./parseConferencePage.pl  
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
#      CREATED: 10/23/2019 14:24:10
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use LWP::Simple;
use Getopt::Long;


#global const's
my $CONF = {
#	RecSys=>[
#		"https://dblp.org/db/conf/recsys/recsys2019.html",
#		"https://dblp.org/db/conf/recsys/recsys2019lbr.html",
#		"https://dblp.org/db/conf/recsys/rmse2019.html",
#		"https://dblp.org/db/conf/recsys/complexrec2019.html",
#		"https://dblp.org/db/conf/recsys/intrs2019.html",
#		"https://dblp.org/db/conf/recsys/healthrecsys2019.html",
#		"https://dblp.org/db/conf/recsys/impactrs2019.html",
#	],
#	SIGMOD=>[
#		"https://dblp.org/db/conf/sigmod/sigmod2019.html",
#		"https://dblp.org/db/conf/sigmod/dsmm2019.html",
#		"https://dblp.org/db/conf/sigmod/sbd2019.html",
#		"https://dblp.org/db/conf/sigmod/aidm2019.html",
#		"https://dblp.org/db/conf/sigmod/deem2019.html",
#		"https://dblp.org/db/conf/sigmod/hilda2019.html",
#		"https://dblp.org/db/conf/grades/grades2019.html",
#	],
#	HCOMP=>[
#		"https://dblp.org/db/conf/hcomp/hcomp2018.html",
#	],
#	VLDB => [
#		"https://dblp.org/db/journals/pvldb/pvldb12.html",
#		"https://dblp.org/db/conf/vldb/phd2019.html",
#	],
#	ICDE=>[
#		"https://dblp.org/db/conf/icde/icde2019.html",
#		"https://dblp.org/db/conf/icde/icde2019w.html",
#	],
#	EDBT=>[
#		"https://dblp.org/db/conf/edbt/edbt2019.html",
#		"https://dblp.org/db/conf/edbt/edbt2019w.html",
#	],
#	BigData=>[
#		"https://dblp.org/db/conf/bigdataconf/bigdataconf2018.html",
#	]
	WWW => [
		"https://dblp.org/db/conf/www/www2019.html",
		"https://dblp.org/db/conf/www/www2019c.html",
	],
	ICWSM=>[
		"https://dblp.org/db/conf/icwsm/icwsm2019.html",
	],
	WI=>[
		"https://dblp.org/db/conf/webi/webi2019.html",
		"https://dblp.org/db/conf/webi/webi2019c.html",
	],
};

#main
my %opts;
GetOptions(
	"pretty" => \$opts{pretty},
);
$opts{pretty} //= 0;

if( not @ARGV ) {
	for( sort keys %$CONF ) {
		printf("%s\n",$_);
		my $total = 0;
		for(@{$CONF->{$_}}) {
			my $str = get($_);
			my $count = () = $str =~/<article/g;
			$total += $count;
			printf("\t%90s: %04d\n",$_,$count);
		}
		printf("\t%90s: %04d\n","total",$total);
		print("\n");
	}
} elsif( @ARGV == 1 ) {
	my $str = get($ARGV[0]);
	while( $str =~ /<li class="entry inproceedings".*?>(.*?)<\/article>/g ) {
		if( $1 =~ /.*?<b>view<\/b>.*?href="(?<href>.*?)".*<span class="title" itemprop="name">(?<name>.*?)<\/span>/) {
			if( $opts{pretty} ) {
				printf("%s, %s\n\n",@+{qw(name href)});
			} else {
				printf("%s\n",@+{qw(name)});
			}
		}
	}
} else {
	die join(" ",@ARGV);
}
