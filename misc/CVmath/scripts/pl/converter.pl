#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: converter.pl
#
#        USAGE: ./converter.pl  
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
#      CREATED: 2019年02月22日 19時43分34秒
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Data::Dumper;
use String::Util qw(trim);
use Template;
use FindBin;


#global const's
#global var's
my $tt = Template->new({
    INCLUDE_PATH => "$FindBin::Bin/templates",
    }) || die "$Template::ERROR\n";
#procedures
sub loadSimpleCsv {
	(my $configfile) = @_;
	my @tsv;
	if ( open my $fh, '<', $configfile ) {
		my $data = do { local $/; <$fh> };
		@tsv = split("\n",$data);
	} else {
		warn sprintf("error opening %s\nerror=%s\n",$configfile,$!);
	}
	for(@tsv) {
		my @l = split("\t",$_);
		$_ = \@l;
	}
	(my $headers,my @tail) = @tsv;
	my @res;
	for my $item (@tail) {
		my %hash;
		for my $i (1..(scalar @$item)) {
			$hash{$$headers[$i-1]} = trim($$item[$i-1]);
		}
		push(@res,\%hash);
	}
	return (
		HEADER => $headers,
		RECORDS => \@res,
	);
}
sub printTableRow {
	my %hash = @_;
	my @row = @{$hash{ROW}};
	$hash{TAG} //= 'td';
	my @res;
	for my $item (@row) {
		push (@res, sprintf("<%s>%s</%s>",
				$hash{TAG},
				printItem($item),
				$hash{TAG},
			));
	}
	return sprintf("<%s>%s</%s>",
		'tr',
		join(" ",@res),
		'tr',
	);
}
sub printItem {
	(my $item) = @_;
	if( $item =~ /^https?:\/\// ) {
		return sprintf("<a href=\"%s\">%s</a>",$item,$item);
	} else {
		return $item;
	}
}
sub printTable {
	(my $header, my $records) = @_;
	my @res = (printTableRow(ROW=>$header,TAG=>'th'));

	for my $record (@$records) {
		my %hash = %$record;
		my @row = @hash{@$header};
		push(@res,printTableRow(ROW=>\@row));
	}

	return sprintf("<table border=\"1\">%s</table>",join("\n",@res));
}

#main
(my $from, my $to) = @ARGV;
if( ($from =~ /\.csv$/) && ($to =~ /\.html$/) ) {
	my %res = loadSimpleCsv($from);
	open my $fh, '>', $to or die 'hard';
    $tt->process('csv2html.html', {BODY => printTable(@res{'HEADER','RECORDS'})}, $fh) 
		|| die $tt->error(), "\n";
	close ($fh);
} else {
	printf("don't know how to convert \"%s\"->\"%s\"\n",$from,$to);
}
