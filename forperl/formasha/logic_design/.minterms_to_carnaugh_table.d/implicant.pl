#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: implicant.pl
#
#        USAGE: ./implicant.pl  
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
#      CREATED: 27.10.2019 12:43:23
#     REVISION: ---
#===============================================================================

package Implicant;
use strict;
use warnings;
use utf8;
use JSON;


#procedures
sub newFromString {
    (my $class,my $str,my $varnum,my @alph) = @_;
    if( not @alph ) {
        @alph = ("a".."z");
    }

    my %bits;
    my %types = Implicant->_GetStatusTypes;
    while(length($str)>0) {
        for(0..$#alph) {
            if( substr($str,0,length($alph[$_])) eq $alph[$_] ) {
                $str = substr($str,length($alph[$_]));
                my $flag = 0;
                if( substr($str,0,1) eq "'" ) {
                    $flag = 1;
                    $str = substr($str,1);
                }
                $bits{$_} = (not $flag) ? $types{TRUE} : $types{FALSE};
            }
        }
    }
    my @args = map {exists($bits{$_})?$bits{$_}:$types{NONE}} 0..($varnum-1);
    return bless {
        args=>\@args,
    },$class;
}
sub new {
    (my $class, my $varnum, my $index) = @_;
    my %types = Implicant->_GetStatusTypes;

    if( $index < 0 ) {
        #FIXME: this should be removed
        my @vals = map {$types{$_}} keys %types;
        my @res;
        for(0..(((scalar(@vals))**($varnum))-1)) {
            my @values = map {$vals[$_]} Implicant->DecToBin($_,$varnum,scalar(@vals));
            push @res, bless({args=>\@values}, $class);
        }
        return @res;
    } else {
        my @args = map {$_ ? $types{TRUE}: $types{FALSE}} Implicant->DecToBin($index,$varnum);

        my $self = bless {
            args=>\@args,
        }, $class;
        return $self;
    }
}
sub BinToDec {
    (my $class,my @bin_digits) = @_;
    my $res = 0;
    for(0..$#bin_digits) {
        $res += $bin_digits[$#bin_digits-$_]*(2**$_);
    }
    return $res;
}
sub DecToBin {
    (my $class,my $num,my $pad, my $base) = @_;
    $base //= 2;
    printf(STDERR "num: %d\n",$num);
    $pad //= int(log($num)/log($base))+1;
    my @res;
    while( $num > 0 ) {
        @res = ($num%$base,@res);
        $num = int($num/$base);
    }
    if( @res > $pad ) {
        die "@res > $pad";
    } elsif( @res < $pad ) {
        for(1..($pad-@res)) {
            @res = (0,@res);
        }
    }
    return @res;
}
sub _new {
    (my $class, my @args ) = @_;
    my $self = bless {
        args=>\@args,
    }, $class;
    return $self;
}
sub getCover {
    (my $self) = @_;
    my %types = Implicant->_GetStatusTypes;
    my @res;
    for( 0..@{$self->{args}}) {
        if( $self->{args}->[$_] != $types{NONE} ) {
            my @args = @{$self->{args}};
            $args[$_] = $types{NONE};
            push @res, Implicant->_new(@args);
        }
    }
    return @res;
}
sub eval {
    (my $self,my @digits) = @_;
    my %types = Implicant->_GetStatusTypes;
    printf(STDERR "\@digits in eval: %s\n",to_json(\@digits));
    for(0..(@{$self->{args}}-1)) {
        if( $self->{args}->[$_] != $types{NONE} && ($self->{args}->[$_] == $types{TRUE}) != $digits[$_] ) {
            return 0;
        }
    }
    return 1;
}
sub isRelevant {
    (my $self, my @values) = @_;
    my $pad = scalar(@{$self->{args}});
    printf(STDERR "pad: %d\n",$pad);
    my $size = int(2**@{$self->{args}})-1;
    printf(STDERR "size: %d\n",$size);
    my @list = (0..$size);
    printf(STDERR "list: %s\n",to_json(\@list));
    my @supp = $self->getSupport;
    for my $i (@supp) {
        my @digits = Implicant->DecToBin($i,$pad);
        if( not grep {$_==$i} @values ){
            return 0;
        }
    }
    return 1;
}
sub toString {
    (my $self,my @alphabet) = @_;
    if( @alphabet == 0  ) {
        @alphabet = "a".."z";
    }
    my $res = "";
    my %types = Implicant->_GetStatusTypes;
    for(0..(@{$self->{args}}-1)) {
        if( $self->{args}->[$_] != $types{NONE} ) {
            $res .= $alphabet[$_];
            $res .= ($types{FALSE}==$self->{args}->[$_]) ? "'" : " ";
        }
    }
    return $res;
}
sub _GetStatusTypes {
    return (
        TRUE=>0,
        FALSE=>1,
        NONE=>2,
    );
}
sub getLength {
    (my $self) = @_;
    my %types = Implicant->_GetStatusTypes;
    return scalar(grep {$_!=$types{NONE}} @{$self->{args}});
}
sub _getDim {
    (my $self) = @_;
    return scalar(@{$self->{args}});
}
sub getSupport {
    (my $self) = @_;
    my %types = Implicant->_GetStatusTypes;
    my @res;
    my @significantBits = grep {$_!=$types{NONE}} @{$self->{args}};
    for(0..(2**(@{$self->{args}}-$self->getLength)-1)) {
        my @fillBits = Implicant->DecToBin($_,(@{$self->{args}}-$self->getLength));
        my $i = 0; my $j = 0;
        my @bits;
        for(0..($self->_getDim-1)) {
            if( $self->{args}->[$_] == $types{NONE} ) {
                push @bits,$fillBits[$i++];
            } else {
                push @bits, ($significantBits[$j++]==$types{TRUE})?1:0;
            }
        }
        push @res,Implicant->BinToDec(@bits);
    }
    return @res;
}
sub isPrime {
    (my $self,my @minterms) = @_;
    my @cover = $self->getCover;
    for(@cover) {
        if( $_->isRelevant(@minterms) ) {
            return 0;
        }
    }
    return 1;
}

#main
1;
