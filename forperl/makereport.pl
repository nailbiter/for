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

}

#main
createFile();
uploadFile();
