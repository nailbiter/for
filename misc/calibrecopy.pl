#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: calibrecopy.pl
#
#        USAGE: ./calibrecopy.pl  
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
#      CREATED: 10/18/18 14:27:03
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;
use File::Basename;

#main
my $fileName, my $copyFolder, my $calibreFolder;
GetOptions(
	"fileName=s" => \$fileName,
	"calibreFolder=s" => \$calibreFolder,
	"copyFolder=s" => \$copyFolder,
);

open(my $fh, $fileName);
while(<$fh>){
	chomp;
	$_ = substr $_, 4;
	(my $name,my $path,my $suffix) = fileparse($_,qr/\.[^.]*/);
	next if ($suffix eq "");
#	next unless (grep(/$suffix/,qw( .pdf .dvi .djvu)));
	system(sprintf("cp \"%s%s\" %s\n",$calibreFolder,$_,$copyFolder));
#	printf("suff: %s\n",$suffix);
}
