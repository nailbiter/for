#
#===============================================================================
#
#         FILE: 0.t
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 03.11.2019 15:43:03
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
#use utf8;
use Test::More tests => 1;                      # last test to print
use Path::Tiny qw(path);


#main
my $index;
if( $0 =~ /(\d+)\.t$/ ) {
    $index = $1;
} else {
    die "invalid filename!";
}
system(sprintf("cat t/in%d.txt | ./507 > t/.out%d.txt",$index,$index));
my @outs_fn = (sprintf("t/.out%d.txt",$index), sprintf("t/out%d.txt",$index));
system(sprintf("diff -sy %s",join(" ",@outs_fn)));
my @outs = map {path($_)->slurp_utf8} @outs_fn;
#printf(STDERR "res: %d\n",$res);
ok($outs[0] eq $outs[1],sprintf("test #%d",$index));
