#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: articleLabelingHowMuchTime.pl
#
#        USAGE: ./articleLabelingHowMuchTime.pl  
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
#      CREATED: 10/28/2019 12:10:32
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use LWP::Simple;
use Text::CSV qw(csv);
use FindBin;
use JSON;
use Getopt::Long;
use Text::Table;
use DateTime;


#global const's
my $URL = "https://docs.google.com/spreadsheets/d/e/2PACX-1vQdutmYURm0prxZYGkKAUcqURjOL7bI4qm6KHPlsDEC5NN8r68n-gtrz_LRJkoicJCuuMNyXC-6rlsP/pub?gid=681971439&single=true&output=csv";

#main
if( not @ARGV ) {
    my $csv_raw = get($URL);
    my $filename = sprintf("%s/.articleLabelingHowMuchTime.d/tmp.csv",$FindBin::Bin);
    open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";
    print $fh $csv_raw;
    close $fh;

    my $aoh = csv (in => $filename,
                   headers => "auto");
    my %stat = (
        total => 0,
        processed => 0,
        mypart=>0,
        myprocessed=>0,
    );
    for(0..(@$aoh-1)) {
        if( $aoh->[$_]->{"ステータス"} ne "" ) {
            $stat{total}++;
            if( $_ % 2 == 0 ) {
                $stat{mypart}++;
            }
            if( $aoh->[$_]->{"堀越メモ"} ne "" ) {
                $stat{processed}++;
                if( $_ % 2 == 0 ) {
                    $stat{myprocessed}++;
                }
            }
        }
        printf(STDERR "%03d: %s\n",$_,to_json($aoh->[$_]));
    }

    $stat{timestamp} = time();
    printf("%s\n",join(",",@stat{qw(mypart myprocessed processed timestamp total)}));
} else {
    my $aoh = csv (in => $ARGV[0],
                   headers => "auto");
    (my $pivot, my @tail) = @$aoh;           
    my $tb = Text::Table->new(
            "count", "my speed\na/min", "my estimated endtime","total speed\na/min","total estimated endtime",
        );
    for(0..$#tail) {
        my %s;
        my $rec = @tail[$_];
        $s{myspeed} = ($rec->{myprocessed}-$pivot->{myprocessed})*60.0/($rec->{timestamp}-$pivot->{timestamp});
        $s{speed} = ($rec->{processed}-$pivot->{processed})*60.0/($rec->{timestamp}-$pivot->{timestamp});
        $s{myendtime} = 
        $s{endtime} = "";
        $tb->add($_,@s{qw(myspeed myendtime speed endtime)})
    }
    print $tb;
}
