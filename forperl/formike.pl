#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: formike.pl
#
#        USAGE: ./formike.pl -x ~/Downloads/FileZilla.xml 
#
#  DESCRIPTION: copy mike files
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 10/04/2018 11:14:37 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;
use XML::Simple;

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");

#global var's
my $TESTFLAG = 0;

#procedures
sub commify {
	my $text = reverse $_[0];
	$text =~ s/(\d\d\d)(?=\d)(?!\d*\.)/$1,/g;
	return scalar reverse $text;
}
sub myExec{
	(my $cmd) = @_;
	printf("%s\n",$cmd);
	if(not $TESTFLAG){
		system($cmd);
	}
}

#main
my $filename;
my $copyTo;
GetOptions("xml=s" => \$filename, "copyto=s"=>\$copyTo);
printf("got file %s\n",$filename);
open(my $FILE, $filename) or die "Can't read file 'filename' [$!]\n";  
my $xml = <$FILE>; 
close ($FILE);
$xml = new XML::Simple;
my $data = $xml->XMLin($filename);
my $total = 0;
for(@{$data->{Queue}->{Server}->{File}}){
	my @localPath = split('\\\\',$_->{LocalFile});
	@localPath = @localPath[3..$#localPath];
	my $cmd = sprintf("du -hm \"/home/mike/Movies/%s\"",join("/",@localPath));
	my $res = `$cmd`;
	my @split = split(" ",$res);
	$total += $split[0];
#	myExec(sprintf("mkdir -p \"%s%s\"",$copyTo,join("/",@localPath[0..$#localPath-1])));
#	myExec(sprintf("cp \"/home/mike/Movies/%s\" \"%s%s\"",join("/",@localPath),$copyTo,join("/",@localPath[0..$#localPath-1])));
	myExec(sprintf("zip -9 %smike.zip \"/home/mike/Movies/%s\"",$copyTo,join("/",@localPath)));
}
