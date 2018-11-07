#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: mongoCapitalizer.pl
#
#        USAGE: ./mongoCapitalizer.pl --collection COLLECTIONANME --database DATABASENAME
#
#  DESCRIPTION: capitalize all fields in given mongo collection on local db
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 11/06/18 13:54:13
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
	capitalize=> {
		function=>\&capitalize,
		description=>"capitalize",
	},
	help => {
		description=>"show this message",
		function=>\&help,
	}
);
{package Safe::Hash;
        require Tie::Hash;
        our @ISA = 'Tie::StdHash';
        use Carp;

        sub FETCH { 
                exists $_[0]{$_[1]} or croak "no key $_[1]";
                $_[0]{$_[1]}
        }
}
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
sub capitalize(){
	my %cmdline = @_;
	my $coll = MongoDB->connect()->ns(sprintf("%s.%s",$cmdline{database},$cmdline{collection}));
	my $allrecords = $coll->find();
	while(my $next = $allrecords->next){
		my $id = $$next{_id};
		printf(STDERR "id: %s\n",$id);
		my @keys = keys($next);
		for(@keys){
			next if ($_ eq "_id");
			printf(STDERR "\t%s=>%s\n",$_,uc($_));
			$coll->update_one({"_id"=>$id},{'$set'=>{uc($_)=>$$next{$_}}});
			$coll->update_one({"_id"=>$id},{'$unset'=>{$_=>""}});
		}
	}
}

#main
tie my %cmdline => 'Safe::Hash';
GetOptions(
	"collection=s" =>\$cmdline{collection},
	"database=s" =>\$cmdline{database},
	"method=s" => \$cmdline{method},
);
printf(STDERR "%s.%s\n",$cmdline{database},$cmdline{collection});
$METHODS{$cmdline{method}}->{function}->(%cmdline);
