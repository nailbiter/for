#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: reRegister.pl
#
#        USAGE: ./reRegister.pl [name]
#
#  DESCRIPTION: re-register math IP
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/28/2018 02:47:21 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use MongoDB;
use Data::Dumper;
use CGI qw(-utf8);

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");

#global var's
my $client = MongoDB->connect();
my $records = $client->ns("test.reregistration");
#my $TESTFLAG = 1;
my $TESTFLAG = 0;
my $printfline = "https://regist.ms.u-tokyo.ac.jp/net-touroku/net-touroku-dhcp%d.php3?OMAJINAI=%%B4%%C1%%BB%%FA%%A5%%B3%%A1%%BC%%A5%%C9%%A4%%F2%%B4%%D6%%B0%%E3%%A4%%A8%%A4%%CA%%A4%%A4%%A4%%E8%%A4%%A6%%A4%%CB%%21&EtherAddress=%s%%3A%s%%3A%s%%3A%s%%3A%s%%3A%s&Root=%s&KishuMei=%s&OS=%s&ShoyuSha=%d&HeyaBango=%d&RenrakuSaki=%s&Bikou=&RiyouKigen=%s";
my $curDate;

#procedures
sub myCmd{
	my $uri = $_[0];
	my $cmd = sprintf("curl -X POST \"%s\"",$uri);
	printf("cmd:\n\t%s\n",$cmd);
	if(!$TESTFLAG){
		system($cmd);
	}
}
sub myEncode{
	for($_[0]){
		s/ /+/g;
		s/系/%B7%CF/g;
		s/'/%27/g;
	}
}
sub checkRecords{
	printf("checkRecords\n");
	my $all_records = $records->find;

	(my $sec,my $min,my $hour,my $mday,my $mon,my $year,my $wday,my $yday,my $isdst) = localtime();
	$year += 1900;
	$mon += 1;
	$curDate //= sprintf("%04d-%02d-%02d", $year, $mon, $mday);
	printf("curDate: %s\n",$curDate);
	while(my $record=$all_records->next){
		if($curDate eq $record->{date}){
			printf("going to re-register!\n");
			print Dumper($record);

			my @MAC = map {uc $_} split(':',$record->{MAC});
			myEncode $record->{emergency};
			myEncode $record->{OS};
			myEncode $record->{pcname};

			myCmd sprintf($printfline,2,
				$MAC[0],$MAC[1],$MAC[2],$MAC[3],$MAC[4],$MAC[5],$record->{login},
				$record->{pcname},$record->{OS},$record->{room},$record->{room},$record->{emergency},
				$record->{dueDate});
			myCmd sprintf($printfline,3,
				$MAC[0],$MAC[1],$MAC[2],$MAC[3],$MAC[4],$MAC[5],$record->{login},
				$record->{pcname},$record->{OS},$record->{room},$record->{room},$record->{emergency},
				$record->{dueDate});
#			curl -X POST "https://regist.ms.u-tokyo.ac.jp/net-touroku/net-touroku-dhcp2.php3?OMAJINAI=%B4%C1%BB%FA%A5%B3%A1%BC%A5%C9%A4%F2%B4%D6%B0%E3%A4%A8%A4%CA%A4%A4%A4%E8%A4%A6%A4%CB%21&EtherAddress="$MAC0"%3A"$MAC1"%3A"$MAC2"%3A"$MAC3"%3A"$MAC4"%3A"$MAC5"&Root=leontiev&KishuMei=leontiev&OS="$OS"&ShoyuSha=421&HeyaBango=421&RenrakuSaki=Alex+Leontiev&Bikou=&RiyouKigen=2018-10-01"
#OMAJINAI=%B4%C1%BB%FA%A5%B3%A1%BC%A5%C9%A4%F2%B4%D6%B0%E3%A4%A8%A4%CA%A4%A4%A4%E8%A4%A6%A4%CB%21&Root=leontiev&EAdd1=50&EAdd2=9A&EAdd3=4C&EAdd4=59&EAdd5=B7&EAdd6=FF&KishuMei=Let%27s+note&OS=Linux%B7%CF+OS&ShoyuSha=421&HeyaBango=421&RenrakuSaki=Alex+Leontiev&Bikou=
#			print "\t".CGI->new({
#					KishuMei=>$record->{pcname},
#					OS=>$record->{OS},
#				})->query_string."\n";
#			curl -X POST "https://regist.ms.u-tokyo.ac.jp/net-touroku/net-touroku-dhcp3.php3?OMAJINAI=%B4%C1%BB%FA%A5%B3%A1%BC%A5%C9%A4%F2%B4%D6%B0%E3%A4%A8%A4%CA%A4%A4%A4%E8%A4%A6%A4%CB%21&EtherAddress="$MAC0"%3A"$MAC1"%3A"$MAC2"%3A"$MAC3"%3A"$MAC4"%3A"$MAC5"&Root=leontiev&KishuMei=leontiev&OS="$OS"&ShoyuSha=421&HeyaBango=421&RenrakuSaki=Alex+Leontiev&Bikou=&RiyouKigen=2018-10-01"
			print "end!\n";
		}
	}
}

#main
print localtime."\n";
checkRecords();
