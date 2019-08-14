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
use FindBin;
use CGI;
require "$FindBin::Bin/.printEngageTable.d/trello.pl";


#global const's
my $CARD_ID = "5d1976494f4f482fd84c3e9c";
my $PID_FILE_NAME = "$FindBin::Bin/.printEngageTable.d/printEngageTable.pid.txt";
my $PORT_NUMBER = 3030;
#global var's
my $MongoClient;
#procedures

#main
my $client = MongoDB->connect();
#	my $mongoPassword = $MongoClient->ns("admin.passwords")->find_one({key=>"MONGOMLAB"})->{value};
#	$MongoClient = MongoDB->connect(sprintf("mongodb://%s:%s\@ds149672.mlab.com:49672/logistics",
#			"nailbiter",$mongoPassword));
my $TrelloClient //= Trello->new({
		key=> $client->ns("admin.passwords")->find_one({key=>"TRELLOKEY"})->{value},
		token=> $client->ns("admin.passwords")->find_one({key=>"TRELLOTOKEN"})->{value},
	});
my $tableRef = $TrelloClient->getCards("5a83f3449c950b04c540ba66");
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
			  $cgi->td($$_{id}),
			  $cgi->td($$_{name}),
			  $cgi->td( join(",",map {$_->{name}} @{$$_{labels}})),
		  )
	  } 
	  grep {
		  grep /^parttime$/, map {$_->{name}} @{$$_{labels}}
	  }
	  @$tableRef
	),
	#          $cgi->p($cgi->code($FindBin::Bin)),
	$cgi->end_html;
