#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: stateMachineToStateTable.pl
#
#        USAGE: ./stateMachineToStateTable.pl  
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
#      CREATED: 20.12.2019 00:36:45
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use JSON;


#procedures
sub parse_csv {
	(my $il,my %args) = @_;
	$args{separator} //= ",";
	(my $head, my @body) = @$il;
	my @res;
	my @field_names = split(/$args{separator}/,$head);
	for(@body) {
		my @fields = split(/$args{separator}/);
		my %h;
		for(0..$#fields) {
			$h{$field_names[$_]} = $fields[$_];
		}
		push @res,\%h;
	}
	return @res;
}
sub generate_all_input_combinations {
	(my @inputs) = @_;
	my @res;
	for my $val (0..(2**@inputs-1)) {
		my @values = reverse map {int($val/(2**$_))%2} (0..$#inputs);
		my %h;
		@h{@inputs} = @values;
		push @res,\%h;
	}
	return @res;
}
sub is_subinput {
	(my $subinput,my $input) = @_;
	for(keys %$subinput) {
		if($input->{$_} != $subinput->{$_}) {
			return 0;
		}
	}
	return 1;
}
sub num_to_state {
	(my $d) = @_;
	return sprintf("S%d",$d);
}
sub print_csv {
	(my $csv,my %args) = @_;
	$args{separator} //= ",";
	my @fields;
	if( defined $args{fields}) {
		@fields = @{$args{fields}};
	} else {
		my %f;
		for(@$csv) {
			@f{keys %$_} = (1) x scalar(keys %$_);
		}
		@fields = sort keys %f;
	}
	print STDERR "keys: ",to_json(\@fields),"\n";

	print join($args{separator},@fields),"\n";
	for(@$csv) {
		my %h = %$_;
		print join($args{separator},@h{@fields}),"\n";
	}
}

#main
my @input_lines = <>;
map {chomp} @input_lines;
my @csv = parse_csv(\@input_lines,separator=>";");
my %inputs;
my %states;
for(@csv) {
	my $condition_line = $_->{condition};
	my %conditions;
	$states{$_->{"start state"}} = 1;
	for my $condition (split(/,/,$condition_line)) {
		(my $var,my $val) = split(/=/,$condition,2);
		$inputs{$var} = 1;
		$conditions{$var} = int($val);
	}
	delete $_->{condition};
	$_->{conditions} = \%conditions;
	print STDERR to_json($_),"\n";
}
print STDERR to_json([sort keys %inputs]),"\n";
print STDERR to_json([sort keys %states]),"\n";

my @res;
for my $input (generate_all_input_combinations(sort keys %inputs)) {
	my %h = %$input;
	for(@csv) {
		if(is_subinput($_->{conditions},$input)) {
			$h{num_to_state($_->{"start state"})} = num_to_state($_->{"end state"});
		}
	}
	for(keys %states) {
		if(not defined $h{$_}) {
			$h{num_to_state($_)} = num_to_state($_);
		}
	}
	push @res,\%h;
}

print_csv(\@res,
#	fields=>[qw(Floor5 Floor6 Call5 Call6 FS1 FS5 FS6 S0 S1 S2 S3 S4 S5 S6)]
);
