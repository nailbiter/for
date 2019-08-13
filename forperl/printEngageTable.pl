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
require "$FindBin::Bin/.printEngageTable.d/webserver.pl";
require "$FindBin::Bin/.printEngageTable.d/trello.pl";


#global const's
my $CARD_ID = "5d1976494f4f482fd84c3e9c";
my $PID_FILE_NAME = "$FindBin::Bin/.printEngageTable.d/printEngageTable.pid.txt";
my $PORT_NUMBER = 3030;
#global var's
#procedures

#main
system(sprintf("kill %d",path($PID_FILE_NAME)->slurp_utf8));
if ($ARGV[0] ne "kill") {
#	my $obj = MyWebServer->new($PORT_NUMBER);
#	my $pid = $obj->background();
#	print "Use 'kill $pid' to stop server.\n";
#	open(my $fh, '>', $PID_FILE_NAME) or die $!;
#	print $fh $pid;
#	close($fh);
}

my $client = MongoDB->connect();
my $trelloKey = $client->ns("admin.passwords")->find_one({key=>"TRELLOKEY"})->{value};
my $trelloToken = $client->ns("admin.passwords")->find_one({key=>"TRELLOTOKEN"})->{value};
my $TrelloClient //= Trello->new({
		key=> $trelloKey,
		token=> $trelloToken,
	});
my $res = $TrelloClient->getBoards;
my $rres = parse_json( $res );
printf("%s\n%d\n",
#	Dumper($res),
	$res,
	scalar(@$rres),
);
