#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: download_bigquery_table_to_csv.pl
#
#        USAGE: ./download_bigquery_table_to_csv.pl  
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
#      CREATED: 02/26/2020 19:04:56
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use String::Random qw(random_regex);


#global const's
my $BUCKET_NAME = "dtws-leon-private";

#main
(my $table_name) = @ARGV;
print $table_name,"\n";
my $file_name = random_regex("[a-zA-Z]{12}");
print $file_name,"\n";
system(sprintf("bq extract --format=csv %s gs://%s/%s*.csv",$table_name,$BUCKET_NAME,$file_name))
#system(sprintf("gcloud "))
