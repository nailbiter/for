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
use Data::Dumper;
use BibTeX::Parser;

#global const's
my @NUMFIELDNAME = ('calibreNum','year');
my $TESTMODE = 1;
#global var's
my $client = MongoDB->connect();
my $bib = $client->ns("admin.bib");

#main
my $upload = '';
GetOptions ('upload=s' => \$upload);
open(my $fh, '<:encoding(UTF-8)', $upload)
  or die "Could not open file '$upload' $!";
my $parser = BibTeX::Parser->new($fh);
while (my $entry = $parser->next ) {
	if ($entry->parse_ok) {
		printf(STDERR "%s\n",join(",",$entry->fieldlist()));
		printf(STDERR "type=%s\n",$entry->type);
		for($entry->fieldlist()){
			printf(STDERR "\t%s:\t%s\n",$_,$entry->field($_));
		}
	}
}
exit();

my $body = '';
while(<$fh>) {
	chomp;
	$body .= $_;
}
printf(STDERR "body: %s\n\n",$body);
for($body){
	s/@([0-9a-zA-Z]*) *{([0-9a-zA-Z]*)/{"TYPE":"$1","BIBITEM":"$2"/;
	s/([a-zA-Z]*) *= */\"\U$1\":/g;
	s/:{/:"/g;
	s/},/",/g;
	s/, *}/}/;
	s/\\/\\\\/g;
}
printf(STDERR "json: %s\n\n",$body);

my $data = (JSON->new)->decode($body);
for(@NUMFIELDNAME){
	$data->{$_} += 0.0;
}
printf(STDERR "final: %s\n\n",Dumper($data));
if($TESTMODE){
	exit();
}
$bib->insert_one($data);
