#!/usr/bin/env perl -s
#===============================================================================
#
#         FILE: Omj7Yi8o_X.pl
#
#        USAGE: ./Omj7Yi8o_X.pl  
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

use warnings;
use utf8;
#use JSON;


#procedures
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

	for(sort keys %{$self->{vertices}}) {
		push @res, sprintf("%s\"%s\" [%s];",
			"\t" x $tabLevel,
			$_,
			join(",", map {
					sprintf("%s=\"%s\"",$_,$e->{params}->{$_})
				} sort keys %{$e->{params}}),
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

#main
my @lines = <>;
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

				push @curArr,\%minterm;
			}
			$res[$_] = \@curArr;
		}
	}
}

if($dot) {
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
		print join(" || \n\t",map {my %h=%$_;"( ".join(" & ",map {sprintf($h{$_}?"!%s":"%s",$_)} sort keys %h)." )"} @$_),"\n\n";
	}
}
