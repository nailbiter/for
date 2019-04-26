#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: code_analyzer.aux.pl
#
#        USAGE: ./code_analyzer.aux.pl  
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
#      CREATED: 2019年04月26日 17時03分53秒
#     REVISION: ---
#===============================================================================

package MyWebServer;
use strict;
use warnings;
use utf8;
use HTTP::Server::Simple::CGI;
use CGI qw/:standard :html3/;
use Template;
use POSIX;
use List::Util qw(sum);
use Git::Repository 'Blame';
use Data::Dumper;
use Git::Repository::Plugin::Blame::Line;
use Tree::Trie;
use JSON;
use Path::Tiny qw( path );


#global const's
my $CSSSTYLE =<<END;
.mainContainer {
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 90vw;
	margin: auto;
}
.bar {
	width: 100%;
	display: flex;
	flex-direction: row;
}
.legendContainer {
	width: 70%;
	display:flex;
	flex-direction: row;
	justify-content: space-between;
}
END
my $BARCSSSTYLE =<<END;
	background-color: [%COLOR%];
	width: [%WIDTH%]%;
	text-align: center;
	text-overflow: hidden;
END
my $TEXTPART_IN_PERCENTS = 10;
my @CATEGORIES = (
	{
		COLOR=>"red",
		LABEL=>"Alex",
		GIT_NAME=>"Alex Leontiev",
	},
	{
		COLOR=>"green",
		LABEL=>"Ikeda",
		GIT_NAME=>"hideharu.ikeda",
	},
	{
		COLOR=>"blue",
		LABEL=>"Roman",
		GIT_NAME=>"Myroshnyk Roman",
	},
	{
		COLOR=>"yellow",
		LABEL=>"Appaz",
		GIT_NAME=>"appaz",
	},
	{
		COLOR=>"pink",
		LABEL=>"Doolot",
		GIT_NAME=>"doolot",
	},
);
#global var's
my $Tt = Template->new({}) || die "$Template::ERROR\n";
my $CurrentDir;
#procedures
sub setCurrentDir {
	(my $self,my $val) = @_;
	$CurrentDir = $val;
}
sub LoadJsonFromFile{
	(my $fn) = @_;
	my $document;
	if( -e $fn ) {
	  $document = path($fn)->slurp_utf8;
	} else {
		$document = "{}";
	}
	return from_json($document);
}
sub CodeAnalyzer{
	(my $cgi) = @_;
	my %ls = %{LoadJsonFromFile(".gitstat.json")};
	my @stat;
	for my $key (keys %ls) {
		my @statArray;
		for(@CATEGORIES) {
			$ls{$key}->{STAT}->{$_->{GIT_NAME}} //= 0;
			push @statArray, $ls{$key}->{STAT}->{$_->{GIT_NAME}};
		}
		push @stat, {
			LABEL => $key,
			STAT => \@statArray,
			IS_DIR => $ls{$key}->{IS_DIR},
		};
	}

	print $cgi->header,
		  $cgi->start_html(-title => sprintf("Code Analyzer: %s",$CurrentDir),
			  -style => {
				  -code => $CSSSTYLE,
			  },
		  ),
		  $cgi->div({-class=>"mainContainer"},
			  PrintDiagrams($cgi,\@stat),
			  $cgi->div({-class=>"legendContainer"},
				  map {$cgi->div({-style=>sprintf("background-color: %s;",$_->{COLOR})},$_->{LABEL})} @CATEGORIES
			  ),
		  ),
		  $cgi->end_html;
}
sub PrintDiagrams {
	(my $cgi,my $data) = @_;
	my @res;
	for my $item (@$data) {
		my @content;
		my $sum = sum(@{$item->{STAT}});
		for my $i (0..(scalar(@{$item->{STAT}})-1)) {
			my $containerStyle = "";
			$Tt->process(\$BARCSSSTYLE,
				{
					COLOR=>$CATEGORIES[$i]->{COLOR},
					WIDTH=>floor(($item->{STAT}->[$i])*(100.0-$TEXTPART_IN_PERCENTS)/$sum),
				},
				\$containerStyle,
			);
			push @content, $cgi->div({-style=>$containerStyle},
#				$CATEGORIES[$i]->{LABEL},
				"",
			);
		}
		push @res, $cgi->div({-class=>"bar"},
			$cgi->div({-style=>sprintf("width: %d%%;text-overflow: hidden;text-align: left;",$TEXTPART_IN_PERCENTS)},
				$item->{IS_DIR} ? $item->{LABEL}.":" : $cgi->a({href=>CGI->new({'friends'=>[qw/Jessica George Nancy/],})->self_url},$item->{LABEL}),
			),
			@content,
		);
	}
	return @res;
}


#main
1;
