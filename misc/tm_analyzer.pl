#!/usr/local/bin/perl
use strict;
use warnings;
use Set::Tiny;

my $file = '../fortexmacs/master_streamline.tm';
my $set_refs =Set::Tiny->new();
my $set_labels = Set::Tiny->new();

open my $info, $file or die "Could not open $file: $!";

while( my $line = <$info>)  
{
	my @matches = ($line =~ m/<reference\|([^>]*)>/g);
	foreach my $match (@matches)
	{
		$set_refs->insert( $match );
	}
	my @matches = ($line =~ m/<eqref\|([^>]*)>/g);
	foreach my $match (@matches)
	{
		$set_refs->insert( $match );
	}
	my @matches = ($line =~ m/<label\|([^>]*)>/g);
	foreach my $match (@matches)
	{
		$set_labels->insert( $1 );
	}
}
close $info;
print "set_refs has ".$set_refs->size()." elems\n";
print "set_labels has ".$set_labels->size()." elems\n";

my @diff = sort($set_refs->difference($set_labels)->members);
my $i = 0;
print "\ndead links are: \n\n";
foreach my $number (@diff)
{
	$i++;
	print ("$number\n");
}
print "\n". $i."\n";

my @diff = sort($set_labels->difference($set_refs)->members);
print "\nuseless stats are: \n\n";
my $i = 0;
foreach my $number (@diff)
{
	if( $number =~ /bib-/ ||  $number =~ /^section:/ || $number =~ /^sec:/ || $number eq "def-n-nots:eq-A" || $number eq "CAS:def-CAS" || $number eq "Aqimages" || $number =~ "def-IqN" )
	{
		next;
	}
	if( $number =~ /^P-def:/ )#FIXME
	{
		next;
	}
	print ("$number\n");
	$i++;
}
print "\n". $i;

