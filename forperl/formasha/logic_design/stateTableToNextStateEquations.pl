#!/usr/bin/env perl
#===============================================================================
#
#         FILE: stateTableToNextStateEquations.pl
#
#        USAGE: ./stateTableToNextStateEquations.pl  
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
#      CREATED: 17.12.2019 22:19:47
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use JSON;
use Getopt::Long;


#procedures
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
sub gv_new {
	(my %args) = @_;

	my $self = {
		vertices=>{},
		edges=>[],
	};
	return $self;
}
sub gv_addVertex {
	(my $self, my $vertex,my %params) = @_;
	$self->{vertices} = {
		%{$self->{vertices}},
		$vertex=>\%params,
	};
}
sub gv_toString {
	(my $self) = @_;
	my @res = "digraph {";
	my $tabLevel = 1;

	for my $e ( @{$self->{edges}} ) {
		push @res, sprintf("%s\"%s\"->\"%s\" [%s];",
			"\t" x $tabLevel,
			$e->{src},
			$e->{dst},
			join(",", map {
					sprintf("%s=\"%s\"",$_,$e->{params}->{$_})
				} sort keys %{$e->{params}}),
		);
	}

	for my $v (sort keys %{$self->{vertices}}) {
		push @res, sprintf("%s\"%s\" [%s];",
			"\t" x $tabLevel,
			$v,
			join(",", map {
					sprintf("%s=\"%s\"",$_,$self->{vertices}->{$v}->{$_})
				} sort keys %{$self->{vertices}->{$v}}),
		);
	}

	push @res,"}";
	return join("\n",@res);
}
sub gv_addEdge {
	(my $self, my $src, my $dst, my %params) = @_;
	$self->{edges} = [
		@{$self->{edges}},
		{src=>$src,dst=>$dst,params=>\%params},
	];
}
sub sop_new {
	(my %args) = @_;

	my $self = {
	};
	if( defined $args{sop} ) {
		$self->{sop} = $args{sop};
	} elsif(defined $args{expression}) {
		my @sop;
#		print STDERR "expression: ",$args{expression},"\n";
		for(split(/\|\|/,$args{expression})) {
			/^\s*\(?(?<minterm>[!&a-zA-Z_0-9-\s]*)\)?\s*$/;
			my %h;
			for (split(/&&/,$+{minterm})) {
				/^\s*(?<negation>!)?\s*(?<term>[a-zA-Z_0-9-]+)\s*$/;
				$h{$+{term}} = $+{negation} ? 0 : 1;
			}
			push @sop,\%h;
		}
		$self->{sop} = \@sop;
	}
	return $self;
}
sub sop_eval {
	(my $self,my %values) = @_;
	for my $mt ( @{$self->{sop}} ) {
		my $res = 1;
		for(keys %$mt) {
			if( $mt->{$_} != $values{$_} ) {
				$res = 0;
				last;
			}
		}
		if( $res ) {
			return 1;
		}
	}
	return 0;
}
sub sop_toString {
	(my $self,my %args) = @_;
	$args{or_join_symbol} //= " || ";
	return join($args{or_join_symbol},map {my $mt = $_;sprintf("(%s)",join(" && ", map {sprintf($mt->{$_}?"%s":"!%s",$_)} sort keys %$mt))} @{$self->{sop}});
}

#main
my @lines = <STDIN>;
my $check_simplification;
my $dot;
GetOptions(
	"dot"=>\$dot,
	"check_simplification=s@"=>\$check_simplification,
);
map {chomp $_} @lines;
@lines = map {s/\r//r} @lines;
(my $header_, my $stateCodes_,my @rest) = @lines;
print STDERR $stateCodes_,"\n";
my @stateCodes = grep {/\d+/} split(/,/,$stateCodes_);
my @inputNames = grep {!/^$/} split(/,/,$header_);
my %stateNameCodeCorr;
my $stateBitsNum = 0;
for my $i (-scalar(@stateCodes)..-1) {
	my @bits = split(//,$stateCodes[$i]);
	$stateNameCodeCorr{$inputNames[scalar(@inputNames)+$i]} = [@bits];
	if(@bits >= $stateBitsNum) {
		$stateBitsNum = @bits;
	}
}
@inputNames = @inputNames[0..(scalar(@inputNames)-scalar(@stateCodes)-1)];
#print STDERR to_json(\%stateNameCodeCorr),"\n";
#print STDERR to_json(\@inputNames),"\n";
print STDERR $stateBitsNum,"\n";

my $first = 1;
my @res = ([]) x $stateBitsNum;
my %variables;
for(@rest) {
	my @data =  split(/,/);
	if($data[0] !~ /^$/ && !$first) {
		last;
	}
	$first = 0;
	shift @data;
	my %inputs;
	my @inputValues = @data[0..scalar(@inputNames)-1];
	@inputs{@inputNames} = @inputValues;
	my @states = @data[scalar(@inputNames)..(@data-1)];
	for(@states) {
		if(not defined $stateNameCodeCorr{$_}) {
			die $_;
		}
	}
	
	for my $i (0..(@states-1)) {
		my @bits = @{$stateNameCodeCorr{$states[$i]}};
		for(0..($stateBitsNum-1)) {
			my @curArr = @{$res[$_]};
			if($bits[$_]) {
				my %minterm = %inputs;

				my @stateCode = split(//,$stateCodes[$i]);
				for my $j (0..($stateBitsNum-1)) {
					$minterm{sprintf("s%d",$j)} = $stateCode[$j];
				}

				@variables{sort keys %minterm} = (1) x scalar(keys %minterm);
				push @curArr,\%minterm;
			}
			$res[$_] = \@curArr;
		}
	}
}
@res = map {sop_new(sop=>$_)} @res;

if($check_simplification) {
	my @simplifications = map {sop_new(expression=>$_)} @$check_simplification;
	print STDERR to_json(\@simplifications),"\n";
	for my $i (0..$#simplifications) {
		(my $f1, my $f2) = ($res[$i],$simplifications[$i]);
		for my $input (generate_all_input_combinations(sort keys %variables)) {
			print STDERR to_json($input,{canonical=>1}),"\n";
			if(sop_eval($f1,%$input) != sop_eval($f2,%$input)) {
				die "not eq ",sop_toString($f2)," ",to_json($input,{canonical=>1}),"=",sop_eval($f2,%$input),"\n";
			}
		}
	}
} elsif($dot) {
	my $graph = gv_new;
#	gv_addVertex($graph,"A");
#	gv_addVertex($graph,"B");
#	gv_addEdge($graph,"A","B",label=>"test");
#	for $i_output (0..(@res-1)) {
	my $i_output = $dot - 1;
		my $output = $res[$i_output];
		for my $i_minterm (0..(@$output-1)) {
			my $minterm = $output->[$i_minterm];
			for my $term (sort keys %$minterm) {
				my $r = sprintf("%d_%s",$i_minterm,$term);
				gv_addVertex($graph,$r,label=>sprintf($minterm->{$term} ? "%s" : "!%s",$term));
				gv_addEdge( $graph,
					$r,
					sprintf("minterm_%d",$i_minterm),
				);
			}
			gv_addEdge($graph,
				sprintf("minterm_%d",$i_minterm),
				sprintf("output_%d",$i_output),
			);
		}
#		gv_addEdge($graph,
#			sprintf("output_%d",$i_output),
#			"next state",
#			label=>sprintf("bit_%d",$i_output),
#		);
#	}
	print gv_toString($graph);
} else {
	for(@res) {
		print sop_toString($_,or_join_symbol=>" || \n\t"),"\n\n";
	}
}
