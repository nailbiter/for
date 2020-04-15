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
    } elsif($tgt =~ /-prd$/) {
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
	(my $projectId, my %store) = @_;
    if($store{backend_tables}) {
        my @res;
        for (@{$store{backend_tables}}) {
            my %h;
            @h{qw(dataset_id table_id)} = split(/\./,$_);
            push @res,\%h;
        }
        return @res;
    }
	my $src = getDeploySource($projectId);
	print STDERR "reading POI from table $src:poi.details\n";
	my $pois = from_json(`bq head --format=json $src:poi.details`);
	my @names = map {$_->{uuid} =~ s/-/_/rg} @$pois;
	print STDERR "got @names POIs\n";

	my @res = (
		{dataset_id=>"poi",table_id=>"details"},
		(map {{dataset_id=>"visitors",table_id=>"place_visits_weight_$_"}} @names),
		(map {{dataset_id=>"traffic_volumes",table_id=>"traffic_volumes_$_"}} @names),
	);
#	die to_json(\@res,{pretty=>1});
	return @res;
}
sub getCurrentFirebaseProject {
	my $projectId;
	if(`firebase projects:list` =~ /(dtws-[a-z0-9_\.-]+) \(current\)/) {
		$projectId = $1;
	} else {
		die "no match";
	}
	chomp $projectId;
	return $projectId;
}
sub getCurrentBranchName {
	my $res = `git rev-parse --abbrev-ref HEAD`;
	chomp $res;
	return $res;
}

#main
my %args;
GetOptions(test=>\$args{test});
(my $cmd) = @ARGV;
my $store = path($PRIVATE_STORE)->is_file ? from_json(path($PRIVATE_STORE)->slurp_utf8) : {};
$args{test} //= $store->{testmode};

my $projectId = getCurrentFirebaseProject();
#my $firebase_json = from_json(`firebase projects:list --json`);
my $authDomain = sprintf("https://%s.web.app/",$projectId);
my $firebase_config = {
    projectId => $projectId,
    authDomain => $authDomain,
};

my $sha = `git rev-parse HEAD`;
chomp $sha;

my %commands = (
	tables => sub {
		my @backend_tables = getBackendTablesList($projectId,%$store);
		my %datasets;
		(my $src, my $tgt) = (getDeploySource($firebase_config->{projectId}),$firebase_config->{projectId});
		@datasets{map {$_->{dataset_id}} @backend_tables} = (1) x scalar(@backend_tables);
		for(keys %datasets) {
			myexec("bq mk -f $tgt:$_",test=>$args{test});
		}
		for my $i(1..@backend_tables) {
			my %h = %{$backend_tables[$i-1]};
			printf(STDERR "%d/%d\n",$i,scalar(@backend_tables));
			myexec(sprintf("bq cp -f %s:%s.%s %s:%s.%s",
					$src, @h{qw(dataset_id table_id)},
					$tgt, @h{qw(dataset_id table_id)},
				),
			  test=>$args{test},
			);
		}
	},
	slack => sub {
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
	},
	msg => sub {
		printf("`%s` deployed `%s` to %s",
			"nailbiter\@dtws-work.in",
			$sha,
			$firebase_config->{authDomain},
		);
	},
	link => sub {
		myexec(sprintf("%s \"%s\"",
				"/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome",
				$firebase_config->{authDomain}),test=>$args{test});
	},
	branchtest => sub {
		my $branchName = getCurrentBranchName();
		my @PROJECTS = qw(mitanoodle);
		for(@PROJECTS) {
			if( $branchName eq "$_-production" ) {
				die unless ($projectId eq "dtws-rdemo-$_-stg" || $projectId eq "dtws-rdemo-$_-prd");
				return;
			}
		}
		die unless ($projectId eq "dtws-rdemo-alex");
	},
	addtag => sub {
		my @str = `git branch`;
		my $bn;
		for(@str) {
			chomp;
			if(/^\* (.*)/) {
				$bn = $1;
			}
		}
		my $date = `date "+%Y%m%d"`;
		myexec(sprintf("git tag %s-%s",$bn,$date),test=>$args{test});
	},
	pushtag => sub {
		my @str = `git branch`;
		my $bn;
		for(@str) {
			chomp;
			if(/^\* (.*)/) {
				$bn = $1;
			}
		}
		my $date = `date "+%Y%m%d"`;
		myexec(sprintf("git push -u origin %s-%s",$bn,$date),test=>$args{test});
	}
);

for(((keys %commands),undef)) {
	if( !$_ ) {
		for(keys %commands) {
			print $_,"\n";
		}
		last;
	} elsif($_ eq $cmd) {
		$commands{$_}->();
		last;
	}
}
