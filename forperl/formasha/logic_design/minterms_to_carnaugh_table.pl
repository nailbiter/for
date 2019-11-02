#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: minterms_to_carnaugh_table.pl
#
#        USAGE: ./minterms_to_carnaugh_table.pl INPUTVARNUM "min1 min2 ... minN"
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
#      CREATED: 27.10.2019 10:44:20
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;
use JSON;
use FindBin;
use Set::Scalar;
use String::Random qw(random_regex);
require "$FindBin::Bin/.minterms_to_carnaugh_table.d/implicant.pl";
require "$FindBin::Bin/.minterms_to_carnaugh_table.d/carnaugh_map.pl";


#global const's
#procedures

#main
my %opts;
GetOptions(
    "maxterms=s" => \$opts{M},
    "minterms=s" => \$opts{m},
    "expr=s" => \$opts{expr},
    "dontcares=s" => \$opts{d},
    "inputvarnum=n" => \$opts{inputvarnum},
    "candidate=s" => \$opts{candidate},
    "alphabet=s" => \$opts{alphabet},
	"random" => \$opts{random},
);
if( $opts{random} ) {
	if( not defined $opts{inputvarnum} ) {
		die "inputvarnum has to be defined";
	}
	my @vars;
	for(0..(2**$opts{inputvarnum}-1)) {
		if( rand()<2/3 ) {
			if( rand()<3/8 ) {
				push @vars, "dontcare";
			} else {
				push @vars, "m";
			}
		} else {
			push @vars, "none";
		}
	}

	my $str = <<"PROBLEM";
Find the minimum sum-of-products expression for function below. 
Underline the essential prime implicants in your answer and tell 
which minterm makes each one essential. 
Also find product-of-sums.
PROBLEM

	my $pref = (rand()<0.5);
	printf("# %s\n%s\n```\nf(%s)=%s(%s)%s\n```\n\n",
		random_regex("[0-9a-z]{12}"),
		$str,
		join(",",("a".."z")[0..($opts{inputvarnum}-1)]),
   		$pref ? "Sm" : "PM",
		join(",",grep {$vars[$_] eq "m"} (0..$#vars)),
		(grep /^dontcare$/,@vars)
			? sprintf("%s%s(%s)",
				$pref ? "+" : "*",
				$pref ? "Sd" : "Pd",
				join(",",grep {$vars[$_] eq "dontcare"} (0..$#vars)),
			)
			: ""
	);

	exit(0);
}
if( grep { exists $opts{$_} } @opts{qw(m mm expr)} != 1) {
    die "either one of M or m should be given";
}
my @minterms;
if( $opts{m} ) {
    @minterms = split(" ",$opts{m});
} elsif( $opts{M} ) {
    @minterms = (Set::Scalar->new((0..(2**($opts{inputvarnum})-1))) - Set::Scalar->new(split(" ",$opts{M})))
      ->elements;
} elsif( $opts{expr} ) {
	my @expressions = split(/\+/,$opts{expr});
    my @res = map {Implicant->newFromString($_,$opts{inputvarnum},split(/,/,$opts{alphabet}))} @expressions;
    my $set = Set::Scalar->new();
	my $i = 0;
    for(@res) {
		my $supp = Set::Scalar->new($_->getSupport);
		printf("support of %s is %s\n",$expressions[$i],$supp);
        $set = $set + $supp;
		$i++;
    }
    @minterms = $set->elements;
} else {
    ...
}
my @dontcares;
if ($opts{d}) {
    @dontcares = split(" ",$opts{d});
}
my $inputvarnum = $opts{inputvarnum};

printf("minterms: %s\n",join(",",@minterms));

printf("carnaugh map:\n");
my $cm = CarnaughMap->new(inputvarnum=>$inputvarnum,minterms=>\@minterms,dontcares=>\@dontcares);
printf("%s\n",$cm->toString);

printf("relevant implicants:\n");
my @implicants = sort {$a->getLength <=> $b->getLength}
  grep {$_->isRelevant((Set::Scalar->new(@minterms)+Set::Scalar->new(@dontcares))->elements)}
  Implicant->new($inputvarnum,-1);
for(@implicants) {
    printf("%12s|%d|%12s|%d\n",
        $_->toString,
        $_->getLength,
        join(",",$_->getSupport),
        $_->isPrime(@minterms,@dontcares),
    );
}

printf("minimal SOP:\n");
my $i = 0;
my $remains = Set::Scalar->new(@minterms);
my @res;
for my $impl (@implicants) {
    printf(STDERR "%s\n",$remains);
    if($remains->size==0) {
        last;
    }
    my $supp = Set::Scalar->new($impl->getSupport);
    if( $remains->intersection($supp)->size > 0 ) {
        push @res,$impl;
    }
    $remains = $remains->difference($supp);
}
if( $opts{candidate} ) {
    @res = map {Implicant->newFromString($_,$inputvarnum)} split(/\+/,$opts{candidate});
}
my $size = @res;
for(1..$size) {
    (my $i, my @tail) = @res;
    my $s = Set::Scalar->new($i->getSupport);
    for(@tail) {
        $s = $s - Set::Scalar->new($_->getSupport);
    }
    $s = $s - Set::Scalar->new(@dontcares);
    printf("%12s|%d|%12s|%12s\n",$i->toString,$i->getLength,join(",",$i->getSupport),join(",",$s->elements));
    @res = (@tail,$i);
}

if( $opts{candidate} ) {
    my $set = Set::Scalar->new();
    for(@res) {
        $set = $set + Set::Scalar->new($_->getSupport);
    }

    my $minSupp = Set::Scalar->new(@minterms);
    my $maxSupp = $minSupp + Set::Scalar->new(@dontcares);
    if( not ($minSupp <= $set) ) {
        printf("e! mS<=s: %s",$minSupp-$set);
        die "";
    }
    if( not ($set <= $maxSupp)) {
        printf("e! s<=MS: %s",$set-$maxSupp);
        die "";
    }
    printf("it's a valid candidate\n");
}
