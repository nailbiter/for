#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: mashaextract.pl
#
#        USAGE: ./mashaextract.pl [--count COUNT] [--lang LANG]
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
#      CREATED: 10/07/18 22:45:39
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;


#global const's
my $DIRECTORY = '/Users/oleksiileontiev/Desktop';

#main
my $count = 1, my $lang = "eng";
GetOptions(
	"count=i" => \$count,
	"lang=s" => \$lang,
);
opendir (DIR, $DIRECTORY) or die $!;
my @bildlist;
while (my $file = readdir(DIR)) {
	next unless $file =~ /\ABildschirmfoto/;
	push(@bildlist,$file)
}
@bildlist = sort(@bildlist);
closedir(DIR);

my @list;
for(@bildlist[-$count..-1]){
	my $bild = "/Users/oleksiileontiev/Desktop/$_";
	printf(STDERR "bild: %s\n",$bild);
	my $raw = `tesseract -l $lang '$bild' stdout`;
	my @temp = split("\n",$raw);
	push(@list,@temp);
}
for(@list){
	chomp;
	s/^\s+|\s+$//g;
	next unless (length($_)>0);
	next if ($_ ~~ ["Answers Explained","Summary","-"]);
	printf("%s\n",$_);
}
