#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: sendSlackNotification.pl
#
#        USAGE: ./sendSlackNotification.pl  
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
#      CREATED: 02/18/2020 12:49:58
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use MongoDB;


#main
my $client = MongoDB->connect();
my $slack_webhook = $client->ns("admin.passwords")->find_one({key=>"DTWS_SLACK_WEBHOOK"})->{value};
system(
	sprintf("curl -X POST -H 'Content-type: application/json' --data '{\"text\":\"%s\"}' \"%s\"",
		$ARGV[0],
		$slack_webhook,
	)
);
