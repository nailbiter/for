#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: bibAux.pl
#
#  DESCRIPTION: :
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 11/14/18 15:58:10
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


#global const's
my $AUTHORKEY = 'AUTHOR';
#procedures public
sub getAuthorKey{
	return $AUTHORKEY;
}
sub parseAuthor{
	(my $authorkey) = @_;
	my @authors = split(' and ',$authorkey);
	printf(STDERR "%s\n",Dumper(\@authors));
	@authors = map {processAuthor($_)} @authors;
#	my $subsKey = {'$set'=>{$authorkey => \@authors}};
	return \@authors;
}
#procedures private
sub processAuthor{
	for($_[0]){
		if(/~/){
			my @split = split('~',$_);
			if(scalar(@split)!=2){
				die $_;
			}
			(my $FIRSTNAME,my $LASTNAME) = @split;
			if($FIRSTNAME =~ /^(.*)\.$/){
				$FIRSTNAME = $1;
			}
			return {FIRSTNAME=>$FIRSTNAME,LASTNAME=>$LASTNAME};
		} elsif(/,/) {
			my @split = split(', ',$_);
			if(scalar(@split)!=2){
				die $_;
			}
			(my $LASTNAME,my $FIRSTNAME) = @split;
			if($FIRSTNAME =~ /^(.*)\.$/){
				$FIRSTNAME = $1;
			}
			return {FIRSTNAME=>$FIRSTNAME,LASTNAME=>$LASTNAME};
		} elsif(/[\.~]*/) {
			my @split = split(' ',$_);
			if(scalar(@split)!=2){
				die $_;
			}
			(my $FIRSTNAME,my $LASTNAME) = @split;
#			if($FIRSTNAME =~ /^(.*)\.$/){
#				$FIRSTNAME = $1;
#			}
			return {FIRSTNAME=>$FIRSTNAME,LASTNAME=>$LASTNAME};
		} else {
			die $_;
		}
	}
}

#main
1;
