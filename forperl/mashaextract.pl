#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: mashaextract.pl
#
#        USAGE: ./mashaextract.pl > out.txt
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


my $directory = '/Users/oleksiileontiev/Desktop';
opendir (DIR, $directory) or die $!;
my @bildlist;
while (my $file = readdir(DIR)) {
	next unless $file =~ /\ABildschirmfoto/;
	push(@bildlist,$file)
}
@bildlist = sort(@bildlist);
closedir(DIR);

#my $fn = $bildlist[$#bildlist];
my @list;
for(@bildlist[-23..-1]){
#	printf("%s\n",$_);
	my $raw = `tesseract '/Users/oleksiileontiev/Desktop/$_' stdout`;
#	printf("%s\n",$raw);
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
#for(@list){
#	chomp;
#	next if ($_ eq "Exercise");
#	next if ($_ eq "Exercises");
#	next if ($_ eq "Answers and Explanations");
#	printf("%s\n",$_);
#}
