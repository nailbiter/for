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
use Net::Address::IP::Local;


#global const's
my $CSSSTYLE =<<END;
.mainContainer {
	padding-top:2em;
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 90vw;
	margin: auto;
}
.tooltip {
	position: relative;
	display: inline-block;
}
/* Tooltip text */
.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: #555;
  color: #fff;
  text-align: center;
  padding: 5px 0;
  border-radius: 6px;

  /* Position the tooltip text */
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -60px;

  /* Fade in tooltip */
  opacity: 0;
  transition: opacity 0.3s;
}

/* Tooltip arrow */
.tooltip .tooltiptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Show the tooltip text when you mouse over the tooltip container */
.tooltip:hover .tooltiptext {
  visibility: visible;
  opacity: 1;
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
	padding-top: 2em;
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
my $GitStat;
#procedures
sub setCurrentDir {
	(my $self,my $val) = @_;
	$CurrentDir = $val;
}
sub setGitStat {
	(my $self,my $val) = @_;
	$GitStat = $val;
}
sub TrieLs{
	(my $stat,my $mhash, my @path) = @_;
	my %end = (''=>undef);
	for(@path) {
		$mhash = $mhash->{$_};
	}
	my %res;
	for(keys %{$mhash}) {
		my %val = %{$mhash->{$_}};
		$res{$_} = {
			IS_DIR => not (Dumper(\%end) eq Dumper(\%val)),
			STAT => ComputeStat($stat,join("/",@path,$_)),
		};
	}
	return %res;
}
sub ComputeStat {
	(my $stat, my $pref) = @_;
	my %res;
	for(@{$stat}) {
		if( $_->{LABEL} =~ /^$pref/ ) {
			my %s = %{$_->{STAT}};
			for my $key (keys %s) {
				$res{$key} //= 0;
				$res{$key} += $s{$key};
			}
		}
	}
	return \%res;
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
	my $doc = MongoDB->connect()->ns("admin.code_analyzer")->find_one({repo_name=>$CurrentDir});
	my @path = @{$cgi->param_fetch("path")};
	my %ls = TrieLs($doc->{data},$doc->{trie},@path);
	my @stat;

	for my $key (sort(keys %ls)) {
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
#		  $cgi->p($cgi->code(eval {Net::Address::IP::Local->public_ipv4})),
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
	my @path = @{$cgi->param_fetch("path")};

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
			push @content, $cgi->div({-style=>$containerStyle, -class=>"tooltip"},
#				$CATEGORIES[$i]->{LABEL},
#				"",
				$cgi->span({-class=>"tooltiptext"},
					sprintf("%s: %0.2f\%",$CATEGORIES[$i]->{LABEL},100*($item->{STAT}->[$i])/$sum),
				),
#				<span class="tooltiptext">Tooltip text</span>
			);
		}
		push @res, $cgi->div({-class=>"bar"},
			$cgi->div({-style=>sprintf("width: %d%%;text-overflow: hidden;text-align: left;",$TEXTPART_IN_PERCENTS)},
				(not $item->{IS_DIR}) ? $item->{LABEL}.":" : $cgi->a({
#						href=>CGI->new({'path'=>[@path, $item->{LABEL}],})->self_url
						href=>sprintf("http://%s:%d?%s",
#							$cgi->server_name,
							eval {Net::Address::IP::Local->public_ipv4},
							$cgi->server_port,
							CGI->new({'path'=>[@path, $item->{LABEL}],})->query_string,
						),
					},$item->{LABEL}),
			),
			@content,
		);
	}
	return @res;
}


#main
1;
