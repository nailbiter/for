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
use JSON::Parse 'parse_json';
use FindBin;
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
my $res = $TrelloClient->getBoards;
#printf("%d\n",
#	scalar(@$res),
#);

