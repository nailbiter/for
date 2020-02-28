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
use JSON;


#global const's
my @PROJECTS = ("astute-cumulus-230103","datawise-0vsyuq974qbk","dtws-rdemo-dev","dtws-rdemo-stg","dtws-rdemo-prd","dtws-datawarehouse-dev","dtws-datamart-dev");
my $BQ_LS_COMMAND = "ls -n 1000";
#procedures
sub myexec {
    (my $cmd) = @_;
    print STDERR "> $cmd\n";
    system($cmd);
}

#main
(my $cmd, my $tn) = @ARGV;
$cmd //= "show";
$tn //= "";

my $projects = to_json(\@PROJECTS);

$tn =~ /((?<project_id>[a-zA-Z0-9_-]+)(:(?<dataset_id>[a-zA-Z0-9_-]+)(\.(?<table_id>[a-zA-Z0-9_-]+))?)?)?/;
my %t;
@t{qw(project_id dataset_id table_id)} = @+{qw(project_id dataset_id table_id)};
$t{project_id} //= `echo '$projects'|jq -r '.[]'| fzf`;
die unless $t{project_id};
chomp $t{project_id};

$t{dataset_id} //= `bq $BQ_LS_COMMAND --project_id $t{project_id}|fzf`;
die unless $t{dataset_id};
chomp $t{dataset_id}; 
$t{dataset_id} =~ s/^\s+|\s+$//g;

my @table_ids;
if( $t{table_id} ) {
    @table_ids = ($t{table_id});
} else {
    $t{table_id} = `bq ${BQ_LS_COMMAND} $t{project_id}:$t{dataset_id} | fzf -m | awk -F" " '{print \$1}'`;
    die unless $t{table_id};
    @table_ids = split(/\n/,$t{table_id});
    map s/^\s+|\s+$//g, map {chomp} @table_ids;
}

print STDERR join(".",map {"\"$_\""} @t{qw(project_id dataset_id table_id)}),"\n";
myexec(sprintf("echo '%s'|jq -r '.[]'|gnuparallel bq %s :::",
        to_json(\@table_ids),
        ($cmd =~ /{}/) ? $cmd : sprintf("%s %s:%s.{}",$cmd,@t{qw(project_id dataset_id)}),
    ));
