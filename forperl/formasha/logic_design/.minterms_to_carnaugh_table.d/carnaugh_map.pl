#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: carnaugh_map.pl
#
#        USAGE: ./carnaugh_map.pl  
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
#      CREATED: 27.10.2019 20:06:53
#     REVISION: ---
#===============================================================================

package CarnaughMap;
use strict;
use warnings;
use utf8;


#global const's
my %GREEN_CODES = (
    2=>[
        [0,0],
        [0,1],
        [1,1],
        [1,0],
    ],
    3=>[
        [0,0,0],
        [0,0,1],
        [0,1,1],
        [0,1,0],
        [1,0,0],
        [1,0,1],
        [1,1,1],
        [1,1,0],
    ]
);
#procedures
sub new {
  (my $class, my %h) = @_;
  return bless {
      minterms=>$h{minterms},
      inputvarnum=>$h{inputvarnum},
      dontcares=>$h{dontcares},
  }, $class;
}
sub toString {
    (my $self) = @_;
    (my $inputvarnum, my @minterms) = ($self->{inputvarnum},@{$self->{minterms}});
    my @pair;
    if( $inputvarnum == 4 ) {
        @pair = (2,2);
    } elsif($inputvarnum==5) {
        @pair = (2,3);
    } else {
        ...
    }
    for my $i (@{$GREEN_CODES{$pair[0]}}) {
        printf("\t");
        for my $j (@{$GREEN_CODES{$pair[1]}}) {
            my $num = Implicant->BinToDec(@$j,@$i);
            printf("%s ",(grep /^$num$/,@{$self->{dontcares}})?"x":(grep /^$num$/,@minterms)?"1":"0");
        }
        printf("\n");
    }
}

#main
1;
