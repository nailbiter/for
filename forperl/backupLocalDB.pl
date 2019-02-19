#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: backupLocalDB.pl
#
#        USAGE: ./backupLocalDB.pl  
#
#  DESCRIPTION: backup admin
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 11/19/18 20:21:22
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;
use Data::Dumper;
use Text::TabularDisplay;


#global const's
my $SAVETODIR = '/tmp/localmongo';
my $IP = '10.111.4.34';
my $REMOTEDIRNAME = 'localmongodump';
my %METHODS = (
	'HELP' => {
		description=>'show this help messsage'
	},
	'UP' => {
	},
	'DOWN' => {
	},
	'BACKUP' => {
	},
);
my $DEFAULTMETHOD = 'BACKUP';
#global var's
my $Testflag = 0;
#procedures
$METHODS{HELP}->{func} = sub {
	my %cmdline = @_;
#	printf("this is help with %s\n",Dumper(\%cmdline));
	my $t = Text::TabularDisplay->new(qw(method description));
	for(keys(%METHODS)){
		my $description = $METHODS{$_}->{description};
		$description //= lc($_);
		$t->add($_,$description);
	}
	print $t->render;
};
$METHODS{BACKUP}->{func} = sub {
	my %cmdline = @_;
	my $dirname = sprintf("%s/mongodump%s",$SAVETODIR,getCurrentDateString());
	myExec(sprintf("mongodump -d admin --gzip --out %s",$dirname));
	myExec(sprintf("scp -r %s nailbiter\@%s:~/%s/",$dirname,$IP,$REMOTEDIRNAME));
};
$METHODS{UP}->{func} = sub {
	my %cmdline = @_;
	my $dirname = sprintf("%s/mongodump%s",'/tmp',getCurrentDateString());
	printf("read from %s/\n",$dirname);
	myExec(sprintf("mongorestore -d admin --gzip %s",$dirname));
};
$METHODS{DOWN}->{func} = sub {
	my %cmdline = @_;
	my $dirname = sprintf("%s/mongodump%s",'/tmp',getCurrentDateString());
	myExec(sprintf("mongodump -d admin --gzip --out %s",$dirname));
	printf("saved to %s/\n",$dirname);
};
sub myExec{
	my $cmd = shift;
	printf(STDERR "exec: _%s\n",$cmd);
	system($cmd) unless($Testflag);
}
sub getCurrentDateString{
	(my $sec,my $min,my $hour,my $mday,my $mon,my $year,my $wday,my $yday,my $isdst) = localtime();
	return sprintf("%04d%02d%02d",1900+$year,$mon+1,$mday);
}
sub parseCommandLine{
	(my $cmdline, my @arguments) = @_;
	my %args;
	for(@arguments){
		my $fullkey = $_;
		(my $key) = split('=',$fullkey);
		$args{$fullkey} = \$$cmdline{$key};
	}
	GetOptions(
		%args,
	);
}

#main
#GetOptions(
#	"testflag=i" => \$Testflag,
#);
my %cmdline;
parseCommandLine(\%cmdline,
	'testflag=n',
#	'method=s',
);

$cmdline{testflag} //= 0;

$Testflag = $cmdline{testflag};

my @leftover = (scalar(@ARGV) > 0) ? @ARGV : ($DEFAULTMETHOD);
for(@leftover){
	my $method = $_;
	$method = uc($method);
	if( not defined $METHODS{$method} ) {
		$method = 'HELP';
	}
	printf("method: %s\n",$method);
	$METHODS{$method}->{func}->(%cmdline);
}
