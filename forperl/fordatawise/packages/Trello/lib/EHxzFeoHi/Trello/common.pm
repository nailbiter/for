#
#===============================================================================
#
#         FILE: common.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 16.02.2020 18:55:33
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
 

#procedures
sub _GetTrelloPasswords{
	(my $pass_id) = @_;
	my $client = MongoDB->connect();
	my $secret = $client->ns("admin.passwords");
	if( not $pass_id ) {
		my $key = $secret->find_one({key=>'TRELLOKEY'})->{'value'};
		printf(STDERR "key: %s\n",$key);
		my $token = $secret->find_one({key=>'TRELLOTOKEN'})->{'value'};
		printf(STDERR "token: %s\n",$token);
		return ($key,$token);
	} else {
		my $obj = $secret->find_one({name=>sprintf("%s-trello",$pass_id)});
		(my $key,my $token) = ($obj->{key},$obj->{token});
		printf(STDERR "keys: %s",to_json({key=>$key,token=>$token},{pretty=>1,canonical=>1}));
		return ($key,$token);
	}
}

#main
1;
