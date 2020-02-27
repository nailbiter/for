#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: bq.pl
#
#        USAGE: ./bq.pl  
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
#      CREATED: 02/27/2020 13:52:29
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


#global const's
my @PROJECTS = ("astute-cumulus-230103","datawise-0vsyuq974qbk");

#main
(my $tn, my $cmd) = @ARGV;
$cmd //= "show";
$tn //= "";

my $projects = join(",",map {"\"$_\""} @PROJECTS);
$projects = "[$projects]";

$tn =~ /((?<project_id>[a-zA-Z0-9_-]+)(:(?<dataset_id>[a-zA-Z0-9_-]+)(\.(?<table_id>[a-zA-Z0-9_-]+))?)?)?/;
$tn =~ /((((?<project_id>[a-zA-Z0-9_-]+):)?(?<dataset_id>[a-zA-Z0-9_-]+)\.)?(?<table_id>[a-zA-Z0-9_-]+))?/;
my %t;
@t{qw(project_id dataset_id table_id)} = @+{qw(project_id dataset_id table_id)};
$t{project_id} //= `echo '$projects'|jq -r '.[]'| fzf`;
chomp $t{project_id};

$t{dataset_id} //= `bq ls --project_id $t{project_id}|fzf`;
chomp $t{dataset_id}; 
$t{dataset_id} =~ s/^\s+|\s+$//g;

$t{table_id} //= `bq ls $t{project_id}:$t{dataset_id} | fzf | awk -F" " '{print \$1}'`;
chomp $t{table_id};
$t{table_id} =~ s/^\s+|\s+$//g;

print STDERR join(".",map {"\"$_\""} @t{qw(project_id dataset_id table_id)}),"\n";
system("bq $cmd $t{project_id}:$t{dataset_id}.$t{table_id}");
