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
    (my $self, my $start, my $end, my $cursor) = @_;

    my $startHourMin = HourMin->new(STRING => $start),
        my $endHourMin = HourMin->new(STRING => $end);
    printf(STDERR "startHourMin: %s\n",Dumper($startHourMin));
    printf(STDERR "endHourMin: %s\n",Dumper($endHourMin));

#    my $cursor = $self->{cursor};

    my $flag = 0;
    my $anchor = $endHourMin;
    while( !$flag && ( my $doc = $cursor->next ) ) {
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

        my $id = $doc->{obj}->{id};
        if( not exists $self->{res}->{$id} ) {
            my $card = $self->{trelloClient}->getCard($id);
            $self->{res}->{$id} = {
                desc => ( length($card->{desc}) > 0 ) ? $card->{desc} : "empty",
                name=>$card->{name},
                duration_min => 0,
                card => $card,
            };
        }
        my $nextAnchor = $flag ? $startHourMin : $hourMin;
        my $minutesInc = $anchor->minutesAfter( $nextAnchor );
        $self->{res}->{ $id }->{duration_min} += $minutesInc;

        $self->{resArray} = [
            @{$self->{resArray}},
            {
                id=>$id,
                inc => $minutesInc,
                anchor => $nextAnchor,
            },
        ];

        $anchor = $nextAnchor;
    }
}

sub print_to_html_weekly {
    (my $self) = @_;
#    my %res = %{$self->{res}};
#    my @resArray = @{$self->{resArray}};
    my $tt = Template->new(
        INCLUDE_PATH=>"$FindBin::Bin/.printEngageTable.d/templates",
        INTERPOLATE=>1,
    );
    my @cards =
        map  {$self->{res}->{$_}}
        grep { $self->{res}->{$_}->{duration_min}>0 }
        sort {$self->{res}->{$a}->{duration_min} cmp $self->{res}->{$b}->{duration_min}} keys %{$self->{res}};
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
                  ($cgi->code("keplerdev")),
                  (sprintf("%.02f",$res{$_}->{duration_min}/60.0)),
                  (sprintf("%.02f",$res{$_}->{duration_min}/60.0)),
                  ($cgi->span($res{$_}->{card}->{closed} ? {-class=>"archived"}:{},$res{$_}->{name})),
                  ($cgi->div({-class=>"descriptionContainer"},$res{$_}->{desc})),
                )
              )
          }
          grep { $res{$_}->{duration_min}>0 }
          sort {$res{$a}->{duration_min} cmp $res{$b}->{duration_min}} keys %res,
        ),
        $cgi->table({-border=>1},
          map {
              $cgi->Tr(
                map {$cgi->td($_)} (
                  ($cgi->a({-href=>$res{$_}->{card}->{shortUrl}},$res{$_}->{card}->{name})),
                )
              )
          }
          grep { $res{$_}->{duration_min}>0 }
          sort {$res{$a}->{duration_min} cmp $res{$b}->{duration_min}} keys %res,
        ),
        $cgi->div({-class=>"stackContainer"},
            map {
                $cgi->div(
                    {-class=>"stackItem", -style=>sprintf("height:%dem",2),},
                    sprintf("<div><code>%s</code>: <i>%s</i></div>",$_->{anchor}->toString(), $res{$_->{id}}->{name}),
                )
            } @resArray
        ),
        $cgi->end_html;
}

#main
1;
