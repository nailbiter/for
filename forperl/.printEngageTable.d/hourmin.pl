#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: hourmin.pl
#
#        USAGE: ./hourmin.pl  
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
#      CREATED: 08/15/19 20:40:00
#     REVISION: ---
#===============================================================================

package HourMin;
use strict;
use warnings;
use utf8;
use DateTime;
use Data::Dumper;


#procedures
sub new {
    (my $class, my %args ) = @_;
	if( exists $args{STRING} ) {
		if( $args{STRING} =~ /(\d\d):(\d\d)/ ) {
			my @lt = localtime();
			my $self = bless {
				hour => $1+0,
				min => $2+0,
				mday => $lt[3],
			}, $class;
		} else {
			die "hard";
		}
	} elsif(exists $args{DATETIME}) {
		my $datetime = $args{DATETIME}->as_datetime;
		$datetime->set_time_zone( 'Asia/Tokyo' );
		my $date = $datetime->stringify;
		if( $date =~ /(\d{4})-(\d{2})-(?<mday>\d{2})T(?<hour>\d{2}):(?<min>\d{2}):(\d{2})/ ) {
			my $self = bless {
				hour => $+{hour}+0,
				min => $+{min}+0,
				mday => $+{mday}+0,
			}, $class;
		} else {
			die "hard";
		}
	} elsif( exists $args{CLONE} ) {
		my $self = bless {
			hour => $args{CLONE}->{hour},
			min => $args{CLONE}->{min},
			mday => $args{CLONE}->{mday},
		}, $class;
	} else {
		die "hard";
	}
}
sub _CompareArraysLexicographically {
	(my $a, my $b) = @_;
	for( my $i = 0; $i < @$a; $i++ ) {
		if( $a->[$i] < $b->[$i] ) {
			return -1;
		} elsif( $a->[$i] > $b->[$i] ) {
			return +1;
		}
	}
	return 0;
}
sub isMeIsEarlier {
	(my $self, my $other) = @_;
	my $res = (
		_CompareArraysLexicographically(
			[$self->{mday},$self->{hour},$self->{min}],
			[$other->{mday},$other->{hour},$other->{min}],
		) eq -1
	);
	printf(STDERR "isMeIsEarlier: a: %s\n\tb: %s\n\ta<b=%d\n",Dumper($self),Dumper($other),$res);
	return $res;
}
sub minutesAfter {
	(my $self, my $other) = @_;
	if( $self->{mday} != $other->{mday} ) {
		die "hard";
	}
	return 60*($$self{hour}-$$other{hour}) + ($$self{min}-$$other{min});
}

#main
1;
