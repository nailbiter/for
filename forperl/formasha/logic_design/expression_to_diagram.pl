#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: expression_to_diagram.pl
#
#        USAGE: ./expression_to_diagram.pl  
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
#      CREATED: 19.12.2019 01:02:47
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
#use JSON;


#procedures
sub gv_new {
	(my %args) = @_;

	my $self = {
		vertices=>{},
		edges=>[],
		params=>\%args,
	};
	return $self;
}
sub gv_addVertex {
	(my $self, my $vertex,my %params) = @_;
	$self->{vertices} = {
		%{$self->{vertices}},
		$vertex=>\%params,
	};
#	printf(STDERR "putting %s with params %s\n",$vertex,to_json(\%params));
}
sub gv_toString {
	(my $self) = @_;
	my @res = "digraph {";
	my $tabLevel = 1;

	for my $param ( sort keys %{$self->{params}} ) {
		push @res,sprintf("%s=%s;",$param,$self->{params}->{$param});
	}
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
#		printf(STDERR "printing %s with params %s\n",$v,to_json($self->{vertices}->{$v}));
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

#main
my $g = gv_new(splines=>"ortho");
my $i_output = 0;
while(<>) {
	my $name_output = sprintf("o_%d",$i_output);
	gv_addVertex($g,$name_output,label=>"OR",shape=>"invtrapezium");
	chomp;
	my $i_minterm = 0;
	for(split(/\|\|/)) {
		my $name_minterm = sprintf("mt_%d_%d",$i_output,$i_minterm);
		gv_addVertex($g,$name_minterm,label=>"AND",shape=>"invhouse");
		/^\s*\(?(?<minterm>[!&a-zA-Z_0-9-\s]*)\)?\s*$/;
		my $i_term = 0;
		for (split(/&&/,$+{minterm})) {
			/^\s*(?<negation>!)?\s*(?<term>[a-zA-Z_0-9-]+)\s*$/;
			my $name_term = sprintf("t_%d_%d_%d",$i_output,$i_minterm,$i_term);
			gv_addVertex($g,$name_term,
				label=>sprintf($+{negation}?"!%s":"%s",$+{term}),
				shape=>"plain",
			);
			gv_addEdge($g,
				$name_term,
				$name_minterm,
			);
			$i_term++;
		}
		gv_addEdge($g,
			$name_minterm,
			$name_output,
		);
		$i_minterm++;
	}
	gv_addEdge($g,$name_output,"next state",xlabel=>sprintf("state[%d]",$i_output));
	$i_output++;
}
print gv_toString($g);
