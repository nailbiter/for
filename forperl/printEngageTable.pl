#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: printEngageTable.pl
#
#        USAGE: ./printEngageTable.pl  
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
#      CREATED: 08/08/19 23:17:22
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Digest::SHA1  qw(sha1 sha1_hex sha1_base64);
use MongoDB;
use Text::TabularDisplay;
use Data::Dumper;
use Path::Tiny qw( path );
use JSON;
use JSON::Parse 'parse_json';
use CGI;
use DateTime;
use Getopt::Long;
use FindBin;
require "$FindBin::Bin/.printEngageTable.d/trello.pl";


#global const's
#global var's
my $MongoClient;
#procedures

#main
my %args
GetOptions(
	"start=s"=>\$args{start},
	"end=s"=>\$args{end},
);
$args{start} //= "10:00";
$args{end} //= "10:00";

my $client = MongoDB->connect();
my $trelloClient //= Trello->new({
		key=> $client->ns("admin.passwords")->find_one({key=>"TRELLOKEY"})->{value},
		token=> $client->ns("admin.passwords")->find_one({key=>"TRELLOTOKEN"})->{value},
	});
my $mongoPassword = $client->ns("admin.passwords")->find_one({key=>"MONGOMLAB"})->{value};
$client = MongoDB->connect(sprintf("mongodb://%s:%s\@ds149672.mlab.com:49672/logistics",
		"nailbiter",$mongoPassword));
my $cursor = $client->get_database("logistics")->get_collection("alex.taskLog")->find(
	{message=>"add engage"},
	{sort=>{date=>-1}},
);

#my $tableRef = $trelloClient->getCards("5a83f3449c950b04c540ba66");

my @arr;
while(my $doc = $cursor->next) {
	printf(STDERR "%s\n",Dumper($doc));
	my $datetime = $doc->{date}->as_datetime;
	$datetime->set_time_zone( 'Asia/Tokyo' );
	my $date = $datetime->stringify;
	push(@arr, {
		id=>$doc->{obj}->{id},
		name=>$doc->{obj}->{name},
		date=>$date,
	});
}
my $tableRef = \@arr;

my $cgi = CGI->new;
print 
#	$cgi->header,
	$cgi->start_html(-title => sprintf("printEngageTable"),
	  -style => {
	#	  -code => $CSSSTYLE,
	  },
	),
	#		  $cgi->div({-class=>"mainContainer"},
	#			  PrintDiagrams($cgi,\@stat),
	#			  $cgi->div({-class=>"legendContainer"},
	#				  map {$cgi->div({-style=>sprintf("background-color: %s;",$_->{COLOR})},$_->{LABEL})} @CATEGORIES
	#			  ),
	#		  ),
#	$cgi->p($cgi->code(to_json($tableRef))),
#	$cgi->p($cgi->code(scalar(@$tableRef))),
	#          $cgi->p($cgi->code(to_json($tableRef,{pretty=>1}))),
	#		,HABITS("kDCITi9O")
	$cgi->table({-border=>1},
	  map {
		  $cgi->Tr(
			  $cgi->td($$_{date}),
#			  $cgi->td($$_{id}),
			  $cgi->td($$_{name}),
		  )
	  }
#	  grep {
#		  grep /^parttime$/, map {$_->{name}} @{$$_{labels}}
#	  }
	  @$tableRef
	),
	$cgi->end_html;
