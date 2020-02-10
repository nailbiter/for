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


# global const's
my $PRIVATE_STORE = ".alex.json";
my $FIREBASE_CONFIG = "./src/constants/firebase-config.json";
#procedures
sub myexec {
    (my $cmd, my $is_testmode) = @_;
    printf(STDERR "> %s\n",$cmd);
    if(!$is_testmode) {
        system($cmd);
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

#main
(my $cmd) = @ARGV;

my $store = from_json(path($PRIVATE_STORE)->slurp_utf8);

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
#for(@{$firebase_json->{result}}) {
#    if( $_->{projectId} eq $projectId ) {
#        $firebase_config = {
#            projectId => $projectId,
#            authDomain => 
#        };
#        last;
#    }
#}


my $sha = `git rev-parse HEAD`;
chomp $sha;

if($cmd eq "deploy") {
    for(@{$store->{backend_tables}}) {
        #FIXME
        #        myexec(sprintf("bq cp -f %s:%s %s:%s_%s",
        #                $firebase_config->{projectId},
        #                $_,
        #                $firebase_config->{projectId},
        #                $_,
        #                $sha,
        #            ),
        #          $store->{testmode},
        #        );
        myexec(sprintf("bq cp -f %s:%s %s:%s",
                getDeploySource($firebase_config->{projectId}),
                $_,
                $firebase_config->{projectId},
                $_,
            ),
          $store->{testmode},
        );
    }
} elsif($cmd eq "slack") {
    myexec(
        sprintf("curl -X POST -H 'Content-type: application/json' --data '{\"text\":\"`%s` deployed `%s` to %s\"}' \"%s\"",
            "nailbiter\@dtws-work.in",
            $sha,
            $firebase_config->{authDomain},
            $store->{SLACK_WEBHOOK},
        ),
        $store->{testmode},
    );
} else {
    print "deploy","\n";
    print "slack","\n";
}
