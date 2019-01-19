#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: makereport.pl
#
#        USAGE: ./makereport.pl  
#
#  DESCRIPTION: make time report
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 01/19/19 21:57:54
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Net::OpenSSH;
use Data::Dumper;
use MongoDB;


#global const's
my $HOST = 'alumni.cs.nctu.edu.tw';
my $REMOTEPATH = '/u/cs/98/9822058/public_html/forcandice/test.html';
my $LOCALPATH = 'report.html';
my $DEFNUMOFTIMERECORDS = 15;
my $TIMEDB = {
	dbname => 'logistics',
	colname => 'alex.time',
};
#procedures
sub getPassword{
	my $mongoClient = MongoDB->connect();
	return $mongoClient->ns("admin.passwords")->find_one({key=>'ALUMNIPASS'})->{value};
}
sub uploadFile{
	my $ssh = Net::OpenSSH->new($HOST, user => 'inp9822058', password => getPassword());
	$ssh->scp_put($LOCALPATH, $REMOTEPATH)
		or die "scp failed: " . $ssh->error;
}
sub createFile{
	my $filename = $LOCALPATH;
	open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";
	my $client = MongoDB->connect();
	my $mongoPassword = $client->ns("admin.passwords")->find_one({key=>"MONGOMLAB"})->{value};
	$client = MongoDB->connect(sprintf("mongodb://%s:%s\@ds149672.mlab.com:49672/logistics","nailbiter",$mongoPassword));
	my $coll = $client->get_database($$TIMEDB{dbname})->get_collection($$TIMEDB{colname})
		->find()->sort({date=>-1})->limit($DEFNUMOFTIMERECORDS);
	while(my $next = $coll->next) {
		printf($fh "%s\n",Dumper($next));
	}
	close($fh);
}

#main
createFile();
#uploadFile();
