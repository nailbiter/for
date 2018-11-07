#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: biblioCleaner.pl
#
#        USAGE: ./biblioCleaner.pl  
#
#  DESCRIPTION: biblio mongo database cleaner
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 11/08/18 00:39:00
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;
use Data::Dumper;
use MongoDB;
use Text::Table;


#global const's
my %METHODS = (
	tidyUpAuthor=> {
		function=>\&tidyUpAuthor,
		description=>"tidyUpAuthor",
	},
	help => {
		description=>"show this message",
		function=>\&help,
	},
);
{package Safe::Hash;
        require Tie::Hash;
        our @ISA = 'Tie::StdHash';
        use Carp;

        sub FETCH { 
                exists $_[0]{$_[1]} or croak sprintf("no key \"%s\"",$_[1]);
                $_[0]{$_[1]}
        }
}
#global var's
my $Testmode = 0;
my $AUTHORKEY = 'AUTHOR';
#procedures
sub help{
	my $tb = Text::Table->new(
		"method",\' | ',"description",
	);
	$tb->add('-----','-------');
	for(keys(%METHODS)){
		$tb->add($_,$METHODS{$_}->{description});
	}
#	$tb->add('-----','-------');
	print $tb;
}
sub tidyUpAuthor{
	(my $cmdlineRef, my $globalDataRef) = @_;
	my $allrecords = $globalDataRef->{coll}->find();
	while(my $next = $allrecords->next){
		next unless(defined $$next{$AUTHORKEY});
		next if(ref($$next{$AUTHORKEY}));
		my @authors = split(' and ',$$next{$AUTHORKEY});
		printf(STDERR "%s\n",Dumper(\@authors));
		@authors = map {processAuthor($_)} @authors;

		my $subsKey = {'$set'=>{$AUTHORKEY => \@authors}};
		printf(STDERR "subskey=%s\n",Dumper($subsKey));
		unless($Testmode){
			$globalDataRef->{coll}->update_one({'_id'=>$$next{'_id'}},$subsKey);
		}
	}
}
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
		} else {
			die $_;
		}
	}
}

#main
tie my %cmdline => 'Safe::Hash';
my %spec;
for(qw( method )){
	$spec{sprintf("%s=s",$_)} = \$cmdline{$_};
}
GetOptions(
	%spec,
	"testmode=i" => \$Testmode,
);

$METHODS{$cmdline{method}}->{function}->(\%cmdline,{coll=>(MongoDB->connect()->ns("admin.bib"))});
