#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: deploy_dtws.pl
#
#        USAGE: ./deploy_dtws.pl  
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
#      CREATED: 01/22/2020 19:46:23
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use JSON;
use Path::Tiny qw(path);
use Getopt::Long;


# global const's
my $PRIVATE_STORE = ".alex.json";
my $FIREBASE_CONFIG = "./src/constants/firebase-config.json";
#procedures
sub myexec {
    (my $cmd, my %args) = @_;

    printf(STDERR "> %s\n",$cmd);
    if(!$args{test}) {
        my $res =  system($cmd);
		printf(STDERR "res: %d\n",$res);
		if( $res ) {
			die $cmd unless $args{force};
		}
    }
}
sub getDeploySource {
    (my $tgt) = @_;
    if($tgt =~ /-stg$/) {
        return $tgt =~ s/-stg$/-dev/r;
    } elsif($tgt =~ /-prd/) {
        return $tgt =~ s/-prd$/-stg/r;
    } else {
        die $tgt;
    }
}
sub getDeployTargetType {
    (my $tgt) = @_;
    if($tgt =~ /-stg$/) {
		return "stg";
    } elsif($tgt =~ /-prd/) {
		return "prd";
    } else {
        die $tgt;
    }
}
sub getBackendTablesList {
	(my $projectId) = @_;
	my $src = getDeploySource($projectId);
	my $pois = from_json(`bq head --format=json $src:poi.details`);
	my @names = map {$_->{uuid} =~ s/-/_/rg} @$pois;

	my @res = (
		{dataset_id=>"poi",table_id=>"details"},
		(map {{dataset_id=>"visitors",table_id=>"place_visits_weight_$_"}} @names),
		(map {{dataset_id=>"traffic_volumes",table_id=>"traffic_volumes_$_"}} @names),
	);
#	die to_json(\@res,{pretty=>1});
	return @res;
}

#main
my %args;
GetOptions(test=>\$args{test});
(my $cmd) = @ARGV;
my $store = from_json(path($PRIVATE_STORE)->slurp_utf8);
$args{test} //= $store->{testmode};

my $projectId;
if(`firebase projects:list` =~ /(dtws-[a-z0-9_\.-]+) \(current\)/) {
    $projectId = $1;
} else {
    die "no match";
}
#my $firebase_json = from_json(`firebase projects:list --json`);
my $authDomain = sprintf("https://%s.web.app/",$projectId);
my $firebase_config = {
    projectId => $projectId,
    authDomain => $authDomain,
};

my $sha = `git rev-parse HEAD`;
chomp $sha;

if($cmd eq "deploy") {
	my @backend_tables = getBackendTablesList($projectId);
	my %datasets;
	(my $src, my $tgt) = (getDeploySource($firebase_config->{projectId}),$firebase_config->{projectId});
	@datasets{map {$_->{dataset_id}} @backend_tables} = (1) x scalar(@backend_tables);
	for(keys %datasets) {
		myexec("bq mk -f $tgt:$_",test=>$args{test});
	}
    for(@backend_tables) {
		my %h = %$_;
        myexec(sprintf("bq cp -f %s:%s.%s %s:%s.%s",
                $src, @h{qw(dataset_id table_id)},
                $tgt, @h{qw(dataset_id table_id)},
            ),
          test=>$args{test},
        );
    }
} elsif($cmd eq "slack") {
	my $slack_url = $store->{_slack_webhooks}->{getDeployTargetType($firebase_config->{projectId})};
    myexec(
        sprintf("curl -X POST -H 'Content-type: application/json' --data '{\"text\":\"`%s` deployed `%s` to %s\"}' \"%s\"",
            "nailbiter\@dtws-work.in",
            $sha,
            $firebase_config->{authDomain},
            $slack_url,
        ),
        test=>$args{test},
    );
} else {
    print "deploy","\n";
    print "slack","\n";
}
