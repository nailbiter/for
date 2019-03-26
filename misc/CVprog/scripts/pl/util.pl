#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: util.pl
#
#        USAGE: ./util.pl  
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
#      CREATED: 03/11/19 03:56:44
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;
use Data::Dumper;
use Text::TabularDisplay;


#global const's
#global var's
#procedures
sub ParseCommandLine {
	(my $cmdline, my @arguments) = @_;
	my %args;
	for(@arguments){
		my $fullkey = $_;
		(my $key) = split('=',$fullkey);
		$args{$fullkey} = \$$cmdline{uc($key)};
	}
	GetOptions(
		%args,
	);
}
sub FindDefaultMethod {
	(my $methods) = @_;
	for(keys %$methods) {
		my $flag = $methods->{$_}->{isDefault};
		$flag //= 0;
		if( $flag ) {
			return $_;
		}
	}
	return '';
}
sub Process {
	(my $env, my $methods, my @args) = @_;
	my $defmet = FindDefaultMethod($methods);
	$methods->{HELP} = {
		callback=>sub {
			my $t = Text::TabularDisplay->new(qw(method description));
			for(keys(%$methods)){
				my $description = $methods->{$_}->{description};
				$description //= lc($_);
				$t->add($_,$description);
			}
			printf("%s\n",$t->render);
		},
		description=>"display this help message",
	};
	if( not $defmet ) {
		$defmet = 'HELP';
		$methods->{HELP}->{isDefault} = 1;
	}
	printf(STDERR "env: %s\t",Dumper($env));
	if( scalar(@args) == 0 ) {
		printf(STDERR "def method \"%s\"\n",$defmet);
		$methods->{$defmet}->{callback}->($env);
	} else {
		for(@args) {
			$_ = uc($_);
			printf(STDERR "arg: %s\n",$_);
			if( /\.json$/) {
				...
			} else {
				printf(STDERR "method \"%s\"\n",$_);
				if(defined $methods->{$_}){
					$methods->{$_}->{callback}->($env);
				} else {
					printf(STDERR "unknown method \"%s\"\n",$_);
				}
			}
		}
	}
}
sub MyExec {
	(my $cmd,my $testflag, my %aux) = @_;
	if(defined $aux{dir}){
		$cmd = sprintf("cd %s && %s",$aux{dir},$cmd);
	}
	printf(STDERR "exec: _%s\n",$cmd);
	if(not $testflag){
		system($cmd);
	}
}

#main
1;
