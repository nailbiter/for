#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: bibTool.pl
#
#        USAGE: ./bibTool.pl [-u file.bib]
#
#  DESCRIPTION: uploads .bib or .tex files to database
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/25/18 17:35:55
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use JSON;
use MongoDB;
use Getopt::Long;
use Data::Dumper;
use BibTeX::Parser;
use FindBin;
require "$FindBin::Bin/bibAux.pl";

#global const's
my @NUMFIELDNAME = ('CALIBRENUM','YEAR','VOLUME','NUMBER');
my $UNIQUEFIELDNAME = 'BIBITEM';
#global var's
my $Testmode = 0;
my $bib = MongoDB->connect()->ns("admin.bib");
#procedures
sub extractTex{
	(my $fh) = @_;
	printf(STDERR "going to upload TeX!!\n");
	my @records;

	my $flag = 0;
	my %record;
	while(<$fh>) {
		chomp;
		next if(/^\%\%/);
		if(/^ *$/) {
			if($flag){
				my %copy = %record;
				push(@records,\%copy);
			}
			$flag = 0;
		} elsif(/^\s*\\bibitem/){
			$flag = 1;
			%record = ();
			if(/\\bibitem\[([[:ascii:]]+?)\]\{([[:ascii:]]+?)\}/){
				$record{COMPARISONKEY} = $1;
				$record{BIBITEM} = $2;
			} elsif(/\\bibitem\{([[:ascii:]]+?)\}/){
				$record{BIBITEM} = $1;
			} else {
				die sprintf("line: %s",$_);
			}
			$record{BODY} = [];
			printf(STDERR "start processing! with=%s\n",$_);
		} elsif($flag) {
			printf(STDERR "processing: %s\n",$_);
			push(@{$record{BODY}},$_);
		}
	}
	if($flag){
		my %copy = %record;
		push(@records,\%copy);
	}

	printf(STDERR "going to return:\n");
	for(@records){
		printf(STDERR "\t%s\n",$_->{BIBITEM});
	}
	return @records;
}
sub extractBib{
	(my $fh) = @_;
	printf(STDERR "going to upload BIB!!\n");
	my $parser = BibTeX::Parser->new($fh);
	my @records;
	while (my $entry = $parser->next ) {
		if ($entry->parse_ok) {
			my %record;
			printf(STDERR "type=%s\n",$entry->type);
			$record{TYPE} = $entry->type;
			printf(STDERR "key=%s\n",$entry->key);
			$record{BIBITEM} = $entry->key;
			printf(STDERR "%s\n",join(",",$entry->fieldlist()));
			for($entry->fieldlist()){
				(my $key, my $value) = ($_,$entry->field($_));
				$key = uc($key);
				printf(STDERR "\t%s:\t%s\n",$key,$value);
				$record{$key} = $value;
			}
			for(@NUMFIELDNAME){
				if(defined $record{$_}){
					$record{$_} += 0.0;
				}
			}
			my $authorkey = getAuthorKey();
			$record{$authorkey} = parseAuthor($record{$authorkey});
			push(@records,\%record);
		}
	}
	return @records;
}

#main
my $upload = '';
GetOptions (
	'upload=s' => \$upload,
	'testmode=i' => \$Testmode,
);
open(my $fh, '<:encoding(UTF-8)', $upload)
  or die "Could not open file '$upload' $!";
my @records;
if($upload =~ /\.tex$/){
	@records = extractTex($fh);
} elsif($upload =~ /\.bib$/){
	@records = extractBib($fh);
} else {
	die sprintf("unknown extension in %s!",$upload);
}
for(@records){
	if($bib->find_one({$UNIQUEFIELDNAME => $$_{$UNIQUEFIELDNAME}})){
		printf(STDERR "going to update %s\n",Dumper($_));
		$bib->update_one({$UNIQUEFIELDNAME => $$_{$UNIQUEFIELDNAME}},{'$set'=>$_}) unless($Testmode);
	} else {
		printf(STDERR "going to upload %s\n",Dumper($_));
		$bib->insert_one($_) unless($Testmode);
	}
}
