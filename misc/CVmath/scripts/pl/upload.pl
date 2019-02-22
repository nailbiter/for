#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: upload.pl
#
#        USAGE: ./upload.pl  
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
#      CREATED: 2019年02月22日 17時14分15秒
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use JSON::Parse 'parse_json';
use Data::Dumper;
use MongoDB;
use Net::SCP::Expect;


#global const's
#global var's
my %Environment = (
	TESTFLAG => 0,
);
#procedures
sub LoadJson {
	(my $configfile) = @_;
	my $json = {};
	if ( open my $fh, '<', $configfile ) {
		my $data = do { local $/; <$fh> };
		$json = parse_json($data);
	} else {
		warn sprintf("error opening %s\nerror=%s\n",$configfile,$!);
	}
}
sub getKey {
	(my $keyname) = @_;
	$keyname = uc($keyname);
	return $Environment{PROFILES}->{$keyname}->{$Environment{$keyname}};
}
sub GetPassByName {
	(my $name) = @_;
	return MongoDB->connect(sprintf("mongodb://%s",getKey('DB')->{IP}))->ns("admin.passwords")->find_one({key => $name})->{value};
}
sub myExec{
	(my $cmd, my %aux) = @_;
	if(defined $aux{dir}){
		$cmd = sprintf("cd %s && %s",$aux{dir},$cmd);
	}
	printf(STDERR "exec: _%s\n",$cmd);
	if(not $Environment{TESTFLAG}){
		system($cmd);
	}
}

#main
for(@ARGV) {
	my $fn = $_;
	printf("arg: %s\n",$_);
	if( $fn =~ /\.json$/ ) {
		my $json = LoadJson($fn);
		for(keys %$json) {
			$Environment{uc($_)} = $$json{$_};
		}
	} else {
		my $serverData = getKey('uploadto');
		my %connectionData = (
			host=>$$serverData{IP},
			user=>$$serverData{LOGIN},
			password=>GetPassByName($$serverData{PASS}),
		);
		printf("upload file \"%s\" to \"%s\"\n",$fn,$$serverData{DIR});
		printf(STDERR "env: %s, data: %s\n",Dumper($serverData),Dumper(\%connectionData));
		if( 0 ) {
			$Environment{SCP} //= Net::SCP::Expect->new(%connectionData);
			my $scp = $Environment{SCP};
			printf("scp: %s\n",ref($scp));
			$scp->scp($fn, $$serverData{DIR});
		} else {
			myExec(sprintf("scp %s %s\@%s:%s",
					$fn,
					@connectionData{'user','host'},
					$$serverData{DIR},
				));
		}
	}
}
printf("env: %s\n",Dumper(getKey('uploadto')));
