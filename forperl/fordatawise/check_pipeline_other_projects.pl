#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: check_pipeline_other_projects.pl
#
#        USAGE: ./check_pipeline_other_projects.pl  
#
#  DESCRIPTION: check Appaz's deployment of other projects in pipeline
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 02/21/2020 19:45:12
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Template;


#global const's
my @FILENAMES = (
	"../../dags/[%IF x%]\${x}_[%END%]create_stay_home.py",
	"../../dags/[%IF x%]\${x}_[%END%]create_traffic_volume.py",
	"../../dags/sql/[%IF x%]\${x}_[%END%]create_stay_home/query.jinja.sql",
	"../../dags/sql/[%IF x%]\${x}_[%END%]create_traffic_volume/do_volumes.jinja.sql",
	"../../dags/sql/[%IF x%]\${x}_[%END%]create_traffic_volume/do_count.jinja.sql",
	"../../dags/pt_[%IF x%]\${x}_[%END%]common.py"
);
my @VARNAMES = (
	"[%IF x%]\${x}_[%END%]create_traffic_volume_config",
	"[%IF x%]\${x}_[%END%]create_stay_home_config",
);
my $VIM = "vimdiff -c \"colorscheme blue\"";

#main
my $tt = Template->new({INCLUDE_PATH=>".",INTERPOLATE=>1});
my $project_prefix = $ARGV[0];
if(not $project_prefix) {
	die;
}

for(@VARNAMES) {
	my %h;
	$tt->process(\$_,{},\$h{1});
	$tt->process(\$_,{x=>$project_prefix},\$h{2});
	system(sprintf("cat variables.json|jq '.%s' > /tmp/%s.json",$h{1},$h{1}));
	system(sprintf("cat variables.json|jq '.%s' > /tmp/%s.json",$h{2},$h{2}));
}

for(@FILENAMES) {
	my %h;
	$tt->process(\$_,{},\$h{1});
	$tt->process(\$_,{x=>$project_prefix},\$h{2});
	system(sprintf("%s %s %s",$VIM,@h{qw(1 2)}));
}
for(@VARNAMES) {
	my %h;
	$tt->process(\$_,{},\$h{1});
	$tt->process(\$_,{x=>$project_prefix},\$h{2});
	system(sprintf("%s /tmp/%s.json /tmp/%s.json",$VIM,@h{qw(1 2)}));
}
