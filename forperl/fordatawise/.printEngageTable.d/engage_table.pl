#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: engage_table.pl
#
#        USAGE: ./engage_table.pl
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
#      CREATED: 09/19/2019 13:12:40
#     REVISION: ---
#===============================================================================

package EngageTable;
use strict;
use warnings;
use utf8;
use Data::Dumper;
use Path::Tiny qw( path );
use JSON;
use JSON::Parse 'parse_json';
use CGI qw(-utf8);
use DateTime;
use Getopt::Long;
use FindBin;
use Template;
require "$FindBin::Bin/.printEngageTable.d/trello.pl";
require "$FindBin::Bin/.printEngageTable.d/hourmin.pl";


#global const's
my $_CSSSTYLE = <<'END_BLURB';
.descriptionContainer {
	width: 15cm;
}
.stackContainer {
	display: flex;
	margin-top: 2em;
	flex-direction: column;
	width: 100 vw;
	justify-content: flex-start;
	align-items: center;
}
.stackItem {
	width: 80%;
	border: 2px solid;
	margin-bottom: 2px;
	border-radius: 1em;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: flex-end;
}
.archived {
	font-style: italic;
}
END_BLURB
#procedures
sub new {
    (my $class, my $trelloClient) = @_;
    my $self = bless {
        trelloClient=>$trelloClient,
        res=>{},
        resArray=>[],
    }, $class;
}
sub inflate {
    (my $self, my $start, my $end, my $cursor,my %other) = @_;
    $other{task_categories} //= {};

	my $startString;
	my $endString;
	if( $other{month} ) {
		die to_json({start=>$start,end=>$end,%other}) unless $other{day};
		$startString = sprintf("%d/%d %s",@other{qw(month day)},$start);
		$endString = sprintf("%d/%d %s",@other{qw(month day)},$end);
	} elsif ($other{day}) {
		$startString = sprintf("%d %s",$other{day},$start);
		$endString = sprintf("%d %s",$other{day},$end);
	} else {
		(my $startString, my $endString) = ($start,$end);
	}
	print STDERR to_json({startString=>$startString,endString=>$endString}),"\n";

    my $startHourMin = HourMin->new(STRING => $startString)->toDateTime,
        my $endHourMin = HourMin->new(STRING => $endString)->toDateTime;
    printf(STDERR "startHourMin: %s\n",Dumper($startHourMin));
    printf(STDERR "endHourMin: %s\n",Dumper($endHourMin));
	$self->{startHourMin} = $startHourMin;
	$self->{endHourMin} = $endHourMin;
    $self->{task_categories} = $other{task_categories};

    my $flag = 0;
    my $anchor = $endHourMin;
    while( my $doc = $cursor->next ) {
        my $datetime = $doc->{date}->as_datetime;
        $datetime->set_time_zone( 'Asia/Tokyo' );
		if( $datetime->epoch<$startHourMin->epoch || $datetime->epoch > $endHourMin->epoch  ) {
			printf(STDERR "before next\n");
			my @dates = ($startHourMin,$datetime,$endHourMin);
			printf(STDERR "! %s <= %s <= %s\n",map {$_->ymd."T".$_->hms} @dates);
			printf(STDERR "! %010d <= %010d <= %010d\n",map {$_->epoch} @dates);
			next;
		}

        my $minutesInc = $anchor->delta_ms($datetime)->in_units("minutes");
		if( !$minutesInc ) {
			next;
		}
		printf(STDERR "WQRLOvZAZx %s (%d)\n",$doc->{obj}->{name},$minutesInc);
        my $id = $doc->{obj}->{id};
        if( not exists $self->{res}->{$id} ) {
            my $card = $self->{trelloClient}->getCard($id);
            $self->{res}->{$id} = {
                desc => ( length($card->{desc}) > 0 ) ? $card->{desc} : "&nbsp;",
                name=>$card->{name},
                duration_min => 0,
                card => $card,
            };
        }
        my $nextAnchor = $datetime;
        $self->{res}->{ $id }->{duration_min} += $minutesInc;

        $self->{resArray} = [
            @{$self->{resArray}},
            {
                id=>$id,
                inc => $minutesInc,
                anchor => HourMin->new(DATETIME=>$nextAnchor),
            },
        ];
		$anchor = $datetime;
    }
}

sub print_to_html_weekly {
    (my $self) = @_;
    my $tt = Template->new(
        INCLUDE_PATH=>"$FindBin::Bin/.printEngageTable.d/templates",
        INTERPOLATE=>1,
    );
    my @cards =
        map  {$self->{res}->{$_}}
        grep { $self->{res}->{$_}->{duration_min}>0 }
        sort {$self->{res}->{$a}->{duration_min} <=> $self->{res}->{$b}->{duration_min}} keys %{$self->{res}};
    printf(STDERR "%s\n",Dumper(\@cards));
    $tt->process("weekly.html",{
            cards=>\@cards,
        });
}
sub print_to_html {
    (my $self) = @_;
    my $cgi = CGI->new;
    my %res = %{$self->{res}};
    my @resArray = @{$self->{resArray}};
    my $tc = $self->{task_categories};

    print 
        $cgi->header(-charset=>"utf-8"),
        $cgi->start_html(
          -title => sprintf("printEngageTable"),
          -style => {
              -code => $_CSSSTYLE,
          },
        ),
        $cgi->table({-border=>1},
            map { 
                $cgi->Tr(
					map {$cgi->td($_)} (
						$self->{startHourMin}->ymd,
						"Leon",
						$resArray[$_+1]->{anchor}->toString,
						$resArray[$_]->{anchor}->toString,
#                        $resArray[$_+1]->{id},
						$tc->{$resArray[$_+1]->{id}} ? @{$tc->{$resArray[$_+1]->{id}}} : ("",""),
						$cgi->code(sprintf("=HYPERLINK(\"%s\",\"%s\")",$res{$resArray[$_+1]->{id}}->{card}->{shortUrl},$res{$resArray[$_+1]->{id}}->{name}))
					)
					)
            } grep {
				$res{$resArray[$_+1]->{id}}->{name} ne "lunch"
			}
			reverse (0..($#resArray-1))
        ),
        $cgi->div({-class=>"stackContainer"},
            map {
                $cgi->div(
                    {-class=>"stackItem", -style=>sprintf("height:%dem",2),},
                    sprintf("<div><code>%s</code>: <i>%s</i></div>",
						$_->{anchor}->toString, 
						$res{$_->{id}}->{name}
					),
                )
            } @resArray
        ),
        $cgi->end_html;
}

#main
1;
