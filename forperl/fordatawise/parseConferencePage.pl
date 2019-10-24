#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: parseConferencePage.pl
#
#        USAGE: ./parseConferencePage.pl  
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
#      CREATED: 10/23/2019 14:24:10
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use LWP::Simple;
use Getopt::Long;
use HTML::PullParser;
use JSON;
use Path::Tiny qw(path);


#global const's
my $CONF = {
#	RecSys=>[
#		"https://dblp.org/db/conf/recsys/recsys2019.html",
#		"https://dblp.org/db/conf/recsys/recsys2019lbr.html",
#		"https://dblp.org/db/conf/recsys/rmse2019.html",
#		"https://dblp.org/db/conf/recsys/complexrec2019.html",
#		"https://dblp.org/db/conf/recsys/intrs2019.html",
#		"https://dblp.org/db/conf/recsys/healthrecsys2019.html",
#		"https://dblp.org/db/conf/recsys/impactrs2019.html",
#	],
#	SIGMOD=>[
#		"https://dblp.org/db/conf/sigmod/sigmod2019.html",
#		"https://dblp.org/db/conf/sigmod/dsmm2019.html",
#		"https://dblp.org/db/conf/sigmod/sbd2019.html",
#		"https://dblp.org/db/conf/sigmod/aidm2019.html",
#		"https://dblp.org/db/conf/sigmod/deem2019.html",
#		"https://dblp.org/db/conf/sigmod/hilda2019.html",
#		"https://dblp.org/db/conf/grades/grades2019.html",
#	],
#	HCOMP=>[
#		"https://dblp.org/db/conf/hcomp/hcomp2018.html",
#	],
#	VLDB => [
#		"https://dblp.org/db/journals/pvldb/pvldb12.html",
#		"https://dblp.org/db/conf/vldb/phd2019.html",
#	],
#	ICDE=>[
#		"https://dblp.org/db/conf/icde/icde2019.html",
#		"https://dblp.org/db/conf/icde/icde2019w.html",
#	],
#	EDBT=>[
#		"https://dblp.org/db/conf/edbt/edbt2019.html",
#		"https://dblp.org/db/conf/edbt/edbt2019w.html",
#	],
#	BigData=>[
#		"https://dblp.org/db/conf/bigdataconf/bigdataconf2018.html",
#	]
	WWW => [
		"https://dblp.org/db/conf/www/www2019.html",
		"https://dblp.org/db/conf/www/www2019c.html",
	],
	ICWSM=>[
		"https://dblp.org/db/conf/icwsm/icwsm2019.html",
	],
	WI=>[
		"https://dblp.org/db/conf/webi/webi2019.html",
		"https://dblp.org/db/conf/webi/webi2019c.html",
	],
};
#procedures

#main
my %opts;
GetOptions(
	"pretty" => \$opts{pretty},
);
$opts{pretty} //= 0;

if( not @ARGV ) {
	for( sort keys %$CONF ) {
		printf("%s\n",$_);
		my $total = 0;
		for(@{$CONF->{$_}}) {
			my $str = get($_);
			my $count = () = $str =~/<article/g;
			$total += $count;
			printf("\t%90s: %04d\n",$_,$count);
		}
		printf("\t%90s: %04d\n","total",$total);
		print("\n");
	}
} else {
	for(@ARGV) {
		my @res;
		if( /a\d+\.html$/ ) {
			#Applied Geograghy
			my $p = HTML::PullParser->new(file => $_,
									   start => 'event, tagname, @attr',
									   end   => 'event, tagname, skipped_text',
									   ignore_elements => [qw(script style)],);
			while( my $token = $p->get_token) {
				if( ref($token) eq "ARRAY" && @$token >= 4 && $token->[0] eq "start" && $token->[1] eq "li" && $token->[2] eq "class" && $token->[3] =~ /js-article-list-item/ ) {
					my $count = 1;
					my @content;
					while( ($count > 0) && (my $t = $p->get_token) ) {
						push @content, $t;
						if( ref($t) eq "ARRAY" && @$t >= 2 && $t->[1] eq "li" ) {
							if( $t->[0] eq "start" ) {
								$count++;
							} elsif( $t->[0] eq "end" ) {
								$count--;
							}
						}
					}

					my %article;
					for(@content) {
						if( ref($_) eq "ARRAY" && @$_ >= 3 && $_->[2] =~ /select article (.*)/ ) {
							$article{name} //= $1;
						}
					}
					for(0..scalar(@content)) {
						if( ref($content[$_]) eq "ARRAY" && @{$content[$_]} >= 3 && $content[$_]->[1] eq "div" && $content[$_]->[2] eq "hidden" ) {
							$article{href} //= $content[$_+1]->[2];
						}
					}
					push @res, \%article;
				}
			}
			shift @res;
		} else {
			my $str = get($_);
			while( $str =~ /<li class="entry inproceedings".*?>(.*?)<\/article>/g ) {
				if( $1 =~ /.*?<b>view<\/b>.*?href="(?<href>.*?)".*<span class="title" itemprop="name">(?<name>.*?)\.?<\/span>/) {
					push @res, {
						name=>$+{name},
						href=>$+{href},
					};
				}
			}
		}

		for( @res ) {
			my %article = %$_;
			if( $opts{pretty} ) {
				printf("*%s*, %s\n\n",@article{qw(name href)});
			} else {
				printf("%s\n",@article{qw(name)});
			}
		}
	}
}
