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
	},
	renameField=>{
		description => "renames field, required keys: --from [OLDFIELDNAME] --to [NEWFIELDNAME]",
		function => \&renameField,
	},
	removeField => {
		description => "removes field, required keys: --name [FIELDNAME]",
		function => \&removeField,
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
my $coll;
#procedures
sub removeField{
	tie my %cmdline => 'Safe::Hash';
 	%cmdline = @_;
#	printf(STDERR "from=%s, to=%s\n",$cmdline{from},$cmdline{to});
	my $allrecords = $coll->find();
	while(my $next = $allrecords->next){
		next unless(defined $$next{$cmdline{name}});
		my $id = $$next{_id};
		printf(STDERR "id: %s\n",$id);
#		$coll->update_one({"_id"=>$id},{'$set'=>{$cmdline{to}=>$$next{$cmdline{from}}}});
		$coll->update_one({"_id"=>$id},{'$unset'=>{$cmdline{name}=>""}});
	}
}
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
sub renameField{
	tie my %cmdline => 'Safe::Hash';
 	%cmdline = @_;
	printf(STDERR "from=%s, to=%s\n",$cmdline{from},$cmdline{to});
	my $allrecords = $coll->find();
	while(my $next = $allrecords->next){
		next unless(defined $$next{$cmdline{from}});
		my $id = $$next{_id};
		printf(STDERR "id: %s\n",$id);
		$coll->update_one({"_id"=>$id},{'$set'=>{$cmdline{to}=>$$next{$cmdline{from}}}});
		$coll->update_one({"_id"=>$id},{'$unset'=>{$cmdline{from}=>""}});
	}
}
sub capitalize(){
	my %cmdline = @_;
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
my %spec;
for(qw( collection database method from to name )){
	$spec{sprintf("%s=s",$_)} = \$cmdline{$_};
}
GetOptions(
	%spec,
#	"collection=s" =>\$cmdline{collection},
#	"database=s" =>\$cmdline{database},
#	"method=s" => \$cmdline{method},
#	"from=s" => \$cmdline{from},
#	"to=s" => \$cmdline{to},
#	"name=s" => \$cmdline{name},
);
printf(STDERR "%s.%s\n",$cmdline{database},$cmdline{collection});
$coll = MongoDB->connect()->ns(sprintf("%s.%s",$cmdline{database},$cmdline{collection}));
$METHODS{$cmdline{method}}->{function}->(%cmdline);
