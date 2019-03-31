#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: generateAux_eng.pl
#
#        USAGE: ./generateAux_eng.pl  
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
#      CREATED: 03/17/19 17:21:18
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


#global const's
my @MONTHS = (
  '',"Jan","Feb",
  "Mar","Apr","May",
  "Jun","Jul","Aug",
  "Sep","Oct","Nov",
  "Dec",
);
#global var's
#procedures
sub heisei{
  return 1988+$_[0];
}
sub months{
  # printf(STDERR "months got %s\n",$_[0]);
  return $MONTHS[$_[0]];
}
sub processDataSimple{
  if(defined $_[0]){
    my %list = %{$_[0]};
    my %res = %list;
    $res{year} = join("-",map {heisei($_)} @{$list{year}});
    $res{month} = join("-",map {$MONTHS[$_]} @{$list{month}});
    $res{description} = printLine(@{$list{description}});
    return \%res;
  } else {
    return {
      year=>"&nbsp;",
      month=>"",
      description=>"",
    };
  }
}

#main
1;
