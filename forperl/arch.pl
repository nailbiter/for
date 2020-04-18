#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: archivetool.pl
#
#        USAGE: ./archivetool.pl  
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
#      CREATED: 03/12/19 14:54:44
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use FindBin;
use Data::Dumper;
use File::Basename;
require "$FindBin::Bin/util.pl";


#global const's
my %METHODS = (
    ARCHIVE => {
        callback=> sub {
			my %env = %{$_[0]};
            my @localbases;
            for(@{$env{LOCALFILE}}) {
                my $filename = $_;
                MyExec(sprintf("cp -p %s %s",$filename,$env{OUTDIR}),$env{TESTFLAG});
                my %p;
                @p{'base','dir','ext'} = fileparse($filename, qr/\.[^.]*/);
                push(@localbases,\%p);
            }
            my $dateline = GetTodaysDate();
            my $zipname = GetOriginalName($env{OUTDIR},
                sprintf("%s-%s",$env{BASENAME},$dateline),
                '.zip',
            );
            printf(STDERR "zip: %s\n",$zipname);
            my %parsedzip;
            @parsedzip{'base','dir','ext'} = fileparse($zipname, qr/\.[^.]*/);
            MyExec(sprintf("zip -9 %s.zip %s %s",
                    $parsedzip{base},
                    join(' ',map {$_->{base}.$_->{ext}} @localbases),
                    join(" ",@{$env{REMOTEFILE}}),
                ),
                $env{TESTFLAG},dir=>$env{OUTDIR});
            if( defined $env{COMMITSCRIPT} ) {
                MyExec(sprintf("%s %s",$env{COMMITSCRIPT},$zipname),$env{TESTFLAG});
            }
            for(@localbases) {
                MyExec(sprintf("rm -f %s/%s",$env{OUTDIR},$_->{base}.$_->{ext}),
                    $env{TESTFLAG});
            }
        },
        description=>'create an archive',
        isDefault => 1,
    },
);
#global var's
my %Environment;
#procedures
sub GetTodaysDate {
    my %parseddate;
    @parseddate{'sec','min','hour','mday','mon','year','wday','yday','isdst'} = 
        localtime();
    return sprintf("%04d%02d%02d",
        1900+$parseddate{year},$parseddate{mon}+1,$parseddate{mday});
}
sub GetOriginalName {
    (my $dir, my $basename, my $ext) = @_;
    my @seq = 'a'..'zz';
#    printf("alph: %s\n",Dumper(\@seq));
    for my $suff (@seq) {
        my $fn = sprintf("%s/%s%s%s",$dir,$basename,$suff,$ext);
        if( not -f $fn ) {
            return $fn;
        }
    }
    die;
}

#main
my @args;
for(qw( outdir basename commitscript )) {
	push(@args, sprintf("%s=s",$_));
}
ParseCommandLine(\%Environment,@args,'remotefile=s@','localfile=s@');
Process(\%Environment,\%METHODS,@ARGV);
