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
		if( $args{STRING} =~ /(((?<month>\d+)\/)?(?<mday>\d+) )?(?<hour>\d{2}):(?<min>\d{2})/ ) {
			my @lt = localtime();
#			($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
			my $self = bless {
				hour => $+{hour}+0,
				min => $+{min}+0,
				mday => ( (exists $+{mday}) ? $+{mday} : $lt[3] ),
				month => ( (exists $+{month}) ? $+{month} : $lt[4]+1 ),
			}, $class;
		} else {
			die "hard";
		}
	} elsif(exists $args{DATETIME}) {
		my $datetime = $args{DATETIME};
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
    return $self->toDateTime->delta_ms($other->toDateTime)->in_units("minutes");
}
sub toDateTime {
    (my $self) = @_;
    my %lt;
    @lt{qw(sec min hour mday mon year wday yday isdst)} = localtime();
	printf(STDERR "%s\n",Dumper($self));
    return DateTime->new (
        hour=>$self->{hour},
        minute=>$self->{min},
        time_zone=>'Asia/Tokyo',
        day=>$self->{mday},
        month=>$self->{month},
        year=>$lt{year}+1900,
    );
}
sub toString {
	(my $self) = @_;
	return sprintf("%02d:%02d",$self->{hour},$self->{min});
}

#main
1;
