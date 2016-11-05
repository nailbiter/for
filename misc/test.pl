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
	if($line =~ /<reference\|([^>]*)>/)
	{
		$set_refs->insert( $1 );
	}
	if($line =~ /<label\|([^>]*)>/)
	{
		$set_labels->insert( $1 );
	}
}
close $info;
print "set_refs has ".$set_refs->size()." elems\n";
print "set_labels has ".$set_labels->size()." elems\n";

my @diff = $set_refs->difference($set_labels)->members;
print "\ndead links are: \n\n";
foreach my $number (@diff)
{
	print ("$number\n");
}

my @diff = $set_labels->difference($set_refs)->members;
print "\nuseless stats are: \n\n";
foreach my $number (@diff)
{
	if( $number =~ /bib-/ )
	{
		next;
	}
	if( $number =~ /sec:/ )
	{
		next;
	}
	print ("$number\n");
}

