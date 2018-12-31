#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: test.pl
#
#        USAGE: ./test.pl  
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
#      CREATED: 10/22/18 22:32:18
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Data::Dumper;
use MongoDB;


#main
my $client = MongoDB->connect();
my $mongoPassword = $client->ns("admin.passwords")->find_one({key=>"MONGOMLAB"})->{value};
$client = MongoDB->connect(sprintf("mongodb://%s:%s\@ds149672.mlab.com:49672/logistics","nailbiter",$mongoPassword));
my $coll = $client->ns('logistics.money');
#my $allrecords = $coll->find();
#my @array;
#while( my $next = $allrecords->next ) {
#	if( defined $next->{tags} ) {
#		my @tags = @{$next->{tags}};
#		@tags = map {substr($_,1)} @tags;
#
#		my $var = {
#			id =>$next->{_id},
#			tags => \@tags,
#		};
#		push @array, $var;
#	}
#}
#printf("%s\n",Dumper(\@array));
#for(@array) {
#	$coll->update_one({"_id" => $_->{id}}, {'$set' => {tags => $_->{tags}}});
#}
$coll->update_many({},{'$set' => {username => 'alex'}});
