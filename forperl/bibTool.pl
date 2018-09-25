#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: upload.pl
#
#        USAGE: ./upload.pl  
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
#      CREATED: 09/25/18 17:35:55
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use JSON;
use MongoDB;

#global var's
my $client = MongoDB->connect();
my $bib = $client->ns("admin.bib");

#main
my $filename = $ARGV[0];
printf("name: %s\n",$filename);
my $json_text = do {
	open(my $json_fh, "<:encoding(UTF-8)", $filename)
	or die("Can't open \$filename\": $!\n");
	local $/;
	<$json_fh>
};
my $json = JSON->new;
my $data = $json->decode($json_text);

for(@$data){
	print join(', ',keys(%$_))."\n";
	$bib->insert_one($_);
}
