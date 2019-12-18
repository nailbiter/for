#
#===============================================================================
#
#         FILE: GvGraph.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 12/09/2019 15:11:38
#     REVISION: ---
#===============================================================================

package EHxzFeoHi::GvGraph; 
use strict;
use warnings;
use JSON;
use HTTP::Request;
use LWP::UserAgent;
use MongoDB;
use Template;
use File::Basename;


#global const's
#procedures
sub new {
	(my $class,my %args) = @_;

	my $self = bless {
		vertices=>{},
		edges=>[],
	}, $class;
	return $self;
}
sub addVertex {
	(my $self, my $vertex,my %params) = @_;
	$self->{vertices} = {
		%{$self->{vertices}},
		$vertex=>\%params,
	};
}
sub toString {
	(my $self) = @_;
	...
}
sub addEdge {
	(my $self, my $src, my $dst, my %params) = @_;
	$self->{edges} = [
		@{$self->{edges}},
		{src=>$src,dst=>$dst,params=>\%params},
	];
}

#main
1;
