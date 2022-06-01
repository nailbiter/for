#
#===============================================================================
#
#         FILE: implicant.t
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 27.10.2019 22:16:12
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use FindBin;
require "$FindBin::Bin/implicant.pl";

use Test::More tests => 1;                      # last test to print


#main
my $impl = Implicant->newFromString("a'bc",3);
ok($impl->toString eq "a'b c ");
