#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: printEngageTable.pl
#
#        USAGE: ./printEngageTable.pl  
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
#      CREATED: 08/08/19 23:17:22
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use MongoDB;
use Data::Dumper;
use Path::Tiny qw( path );
use JSON;
use JSON::Parse 'parse_json';
use CGI;
use DateTime;
use Getopt::Long;
use FindBin;
require "$FindBin::Bin/.printEngageTable.d/trello.pl";
require "$FindBin::Bin/.printEngageTable.d/hourmin.pl";


#global const's
my $CSSSTYLE = <<'END_BLURB';
.descriptionContainer {
	width: 15cm;
}
END_BLURB
#global var's
my $MongoClient;
#procedures
sub PrintTable {
	(my $cgi, my @table) = @_;
	print 
		$cgi->start_html(-title => sprintf("printEngageTable"),
		  -style => {
			  -code => $CSSSTYLE,
		  },
		),
		$cgi->table({-border=>1},@table),
		$cgi->end_html;
}

#main
my %args;
GetOptions(
	"start=s"=>\$args{start},
	"end=s"=>\$args{end},
);
$args{start} //= "10:00";
my @lt = localtime();
$args{end} //= sprintf("%02d:%02d",$lt[2],$lt[1]);

my $client = MongoDB->connect();
my $trelloClient //= Trello->new({
		key=> $client->ns("admin.passwords")->find_one({key=>"TRELLOKEY"})->{value},
		token=> $client->ns("admin.passwords")->find_one({key=>"TRELLOTOKEN"})->{value},
	});
my $mongoPassword = $client->ns("admin.passwords")->find_one({key=>"MONGOMLAB"})->{value};
$client = MongoDB->connect(sprintf("mongodb://%s:%s\@ds149672.mlab.com:49672/logistics",
		"nailbiter",$mongoPassword));
my $cursor = $client->get_database("logistics")->get_collection("alex.taskLog")->find(
	{message=>"add engage"},
	{sort=>{date=>-1}},
);

my $startHourMin = HourMin->new(STRING => $args{start}),
	my $endHourMin = HourMin->new(STRING => $args{end});
printf(STDERR "startHourMin: %s\n",Dumper($startHourMin));
printf(STDERR "endHourMin: %s\n",Dumper($endHourMin));

my $flag = 0;
my $anchor = $endHourMin;
my %res;
while( !$flag && ( my $doc = $cursor->next ) ) {
	printf(STDERR "%s\n",Dumper($doc));

	my $hourMin = HourMin->new(DATETIME=>$doc->{date});
	my $datetime = $doc->{date}->as_datetime;
	$datetime->set_time_zone( 'Asia/Tokyo' );
	my $date = $datetime->stringify;
	if( $endHourMin->isMeIsEarlier( $hourMin ) ) {
		next;
	}
	if( $hourMin->isMeIsEarlier( $startHourMin ) ) {
		$flag = 1;
	}

	if( not exists $res{$doc->{obj}->{id}} ) {
		my $card = $trelloClient->getCard($doc->{obj}->{id});
		$res{$doc->{obj}->{id}} = {
			desc => ( length($card->{desc}) > 0 ) ? $card->{desc} : "empty",
			name=>$doc->{obj}->{name},
			duration_min => 0,
		};
	}
	$res{ $doc->{obj}->{id} }->{duration_min} += $anchor->minutesAfter(
		$flag ?
		$startHourMin :
		$hourMin
	);
}

my $cgi = CGI->new;
PrintTable($cgi, 
	  map {
		  $cgi->Tr(
			  $cgi->td(sprintf("%.02f",$res{$_}->{duration_min}/60.0)),
			  $cgi->td(sprintf("%.02f",$res{$_}->{duration_min}/60.0)),
			  $cgi->td($res{$_}->{name}),
			  $cgi->td($cgi->div({-class=>"descriptionContainer"},$res{$_}->{desc})),
		  )
	  }
	  keys %res,
);
