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

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");

#global var's
my $client = MongoDB->connect();
my $records = $client->ns("test.reregistration");

#procedures
sub checkRecords{
	printf("checkRecords\n");
	my $all_records = $records->find;

	(my $sec,my $min,my $hour,my $mday,my $mon,my $year,my $wday,my $yday,my $isdst) = localtime();
	$year += 1900;
	$mon += 1;
	my $curDate = sprintf("%04d-%02d-%02d", $year, $mon, $mday);
	printf("curDate: %s\n",$curDate);
	while(my $record=$all_records->next){
		if($curDate eq $record->{date}){
			printf("going to re-register!\n");
			print Dumper($record);
#			curl -X POST "https://regist.ms.u-tokyo.ac.jp/net-touroku/net-touroku-dhcp2.php3?OMAJINAI=%B4%C1%BB%FA%A5%B3%A1%BC%A5%C9%A4%F2%B4%D6%B0%E3%A4%A8%A4%CA%A4%A4%A4%E8%A4%A6%A4%CB%21&EtherAddress="$MAC0"%3A"$MAC1"%3A"$MAC2"%3A"$MAC3"%3A"$MAC4"%3A"$MAC5"&Root=leontiev&KishuMei=leontiev&OS="$OS"&ShoyuSha=421&HeyaBango=421&RenrakuSaki=Alex+Leontiev&Bikou=&RiyouKigen=2018-10-01"
#			curl -X POST "https://regist.ms.u-tokyo.ac.jp/net-touroku/net-touroku-dhcp3.php3?OMAJINAI=%B4%C1%BB%FA%A5%B3%A1%BC%A5%C9%A4%F2%B4%D6%B0%E3%A4%A8%A4%CA%A4%A4%A4%E8%A4%A6%A4%CB%21&EtherAddress="$MAC0"%3A"$MAC1"%3A"$MAC2"%3A"$MAC3"%3A"$MAC4"%3A"$MAC5"&Root=leontiev&KishuMei=leontiev&OS="$OS"&ShoyuSha=421&HeyaBango=421&RenrakuSaki=Alex+Leontiev&Bikou=&RiyouKigen=2018-10-01"
			print "end!\n";
		}
	}
}
sub writeRecord{
	printf("writeRecord\n");
	my $id = $records->insert_one({
			login=>'leontiev',
			OS=>'MacOS+X',
			MAC=>'8C:85:90:B5:42:B8',
			#yyyy-MM-dd
			date=>'2018-09-30',
			emergency=>'Alex+Leontiev',
			room=>421,
			dueDate=>'2018-10-14',
	});
	print $id->{inserted_id}."\n";
}

#main
print localtime."\n";
if(scalar(@ARGV)>0){
	writeRecord();
}else{
	checkRecords();
}
