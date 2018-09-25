#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: bibTool.pl
#
#        USAGE: ./bibTool.pl [-u file.bib]
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
use Getopt::Long;

#global const's
my @NUMFIELDNAME = ('calibreNum','year');

#global var's
my $client = MongoDB->connect();
my $bib = $client->ns("admin.bib");

#main
my $upload = '';
GetOptions ('upload=s' => \$upload);
open(my $fh, '<:encoding(UTF-8)', $upload)
  or die "Could not open file '$upload' $!";
my $body = '';
while(<$fh>) {
	chomp;
	$body .= $_;
}
for($body){
	s/@([0-9a-zA-Z]*){([0-9a-zA-Z]*)/{"type":"$1","bibitem":"$2"/;
	s/([a-zA-Z]*)=/\"$1\":/g;
}
my $json = JSON->new;
my $data = $json->decode($body);
for(@NUMFIELDNAME){
	$data->{$_} += 0.0;
}
$bib->insert_one($data);
