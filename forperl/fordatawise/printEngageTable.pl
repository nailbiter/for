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
use MongoDB;
use Data::Dumper;
use Path::Tiny qw( path );
use JSON;
use JSON::Parse 'parse_json';
use CGI qw(-utf8);
use DateTime;
use Getopt::Long;
use FindBin;
require "$FindBin::Bin/.printEngageTable.d/engage_table.pl";


#global const's
#global var's
#procedures
sub GetCollAndTrelloClient {
	my $client = MongoDB->connect();
	my $trelloClient //= Trello->new({
			key=> $client->ns("admin.passwords")->find_one({key=>"TRELLOKEY"})->{value},
			token=> $client->ns("admin.passwords")->find_one({key=>"TRELLOTOKEN"})->{value},
		});
	my $mongoPassword = $client->ns("admin.passwords")->find_one({key=>"MONGOMLAB"})->{value};
	$client = MongoDB->connect(sprintf("mongodb://%s:%s\@ds149672.mlab.com:49672/logistics",
			"nailbiter",$mongoPassword));
	my $coll = $client->get_database("logistics")->get_collection("alex.taskLog");
	
	return ($coll,$trelloClient);
}
sub GetCursorFromCollection {
	(my $coll) = @_;

	my $cursor = $coll->find(
		{message=>"add engage"},
		{sort=>{date=>-1}},
	);

	return $cursor;
}

#main
my %args;
GetOptions(
	"start=s"=>\$args{start},
	"end=s"=>\$args{end},
#	"config=s"=>\$args{config},
	"weekly"=>\$args{weekly},
	"day=n"=>\$args{day},
	"month=n"=>\$args{month},
);

$args{start} //= "10:00";
my %lt;
@lt{qw(sec min hour mday mon year wday yday isdst)} = localtime();
my @lt = localtime();
$args{end} //= sprintf("%02d:%02d",$lt[2],$lt[1]);
$args{month} //= $lt{mon}+1;
$args{day} //= $lt{mday};

(my $coll,my $trelloClient) = GetCollAndTrelloClient();
my $engageTable = EngageTable->new($trelloClient);

$engageTable->inflate(
	$args{start},
	$args{end},
	GetCursorFromCollection($coll),
	map {$_=>$args{$_}} qw(month day),
);
if( defined $args{weekly} ) {
	$engageTable->print_to_html_weekly;
} else {
	$engageTable->print_to_html;
}
