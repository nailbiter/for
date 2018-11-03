#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: mailparser.pl
#
#        USAGE: ./mailparser.pl -m <my> -k <Ks> -d 2018-09 -f /Users/oleksiileontiev/Documents/emails/ -j ~/bin/emailconverter.jar
#
#  DESCRIPTION: mail parser
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 10/12/18 19:25:54
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;
use MongoDB;
use Mail::IMAPClient;
use IO::Socket::SSL;
use Encode;
use Encode::IMAPUTF7;
use MIME::Base64;
use Data::Dumper;
use MIME::Words qw/decode_mimewords/;
use Date::Parse;
use DateTime::Tiny;
use List::MoreUtils qw(first_index);
use DateTime;
use DateTime::TimeZone;

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");
binmode(STDERR, ":utf8");

#global const's
my $False = 0;
my $True = 1;
my $TESTFLAG = $False;
my @MONTHNAMES = (
	"Jan","Feb",
	"Mar","Apr","May",
	"Jun","Jul","Aug",
	"Sep","Oct","Nov",
	"Dec",
);
my @FOLDERDATA = (
	{
		name=>"INBOX",
		filter=> sub {
			(my $data,my $hash) = @_;
			my $kmail = $data->{kmail};
			my $res1 = grep(/$kmail/,@{$hash->{From}});
			(my $ss,my $mm,my $hh,my $day,my $month,my $year,my $zone) = strptime($hash->{date});
			$year += 1900;
			return $res1 && ($month==$data->{month}) && ($year==$data->{year});
		},
		label => sub {
			(my $mailinfo) = @_;
			$mailinfo->{labels} = ["fromK"];
		},
	},
	{
		name => "1.Sent Messages",
		filter => sub {
			(my $data,my $hash) = @_;
			my $kmail = $data->{kmail};
			my $res1 = grep(/$kmail/,@{$hash->{To}});
			(my $ss,my $mm,my $hh,my $day,my $month,my $year,my $zone) = strptime($hash->{date});
			$year += 1900;
			return $res1 && ($month==$data->{month}) && ($year==$data->{year});
		},
		label => sub {
			(my $mailinfo) = @_;
			$mailinfo->{labels} = ["toK"];
		},
	},
);
#global var's

#procedures
sub myExec{
	(my $cmd) = @_;
	printf("exec: _%s\n",$cmd);
	if(not $TESTFLAG){
		system($cmd);
	}
}
sub connectToMailBox{
	(my $login, my $host,my $password) = @_;
	my $ssl=new IO::Socket::SSL("$host:imaps");
	die ("Error connecting - $@") unless defined $ssl;
	$ssl->autoflush(1);
	my $imap = Mail::IMAPClient->new(  
					Socket=>$ssl,
	#				Debug=>1,
					Server => $host,
					User    => $login,
					Password=> $password,
					Clear   => 5,   # Unnecessary since '5' is the default
	#               ...             # Other key=>value pairs go here
	)       or die "Cannot connect to $host as $login $@";
	printf(STDERR "connected: %s\n",$imap->Connected());
	printf(STDERR "authenticated %s\n",$imap->Authenticated());
	return $imap;
}
sub getEmailInfo{
	(my $imap,my $id) = @_;
	my %data;
	$data{date} = $imap->date( $_ );
	$data{subject} = decode('MIME-Header',$imap->subject($_));
	my $hashref = $imap->parse_headers($_,"From","To");
	@data{"From","To"} = @{$hashref}{"From","To"};
	return %data;
}
sub processEmailInfo{
	my $dataRef = $_[0];
	for(("From","To")){
		@{$dataRef->{$_}} = map {decode('MIME-Header',$_);} @{$dataRef->{$_}};
	}
}
sub filterDataToDateLine{
	(my $filterDataRef) = @_;
#	for( $imap->since('01-Jul-2018') ) {
	my $res = sprintf("%02d-%s-%04d",01,$MONTHNAMES[$filterDataRef->{month}],$filterDataRef->{year});
	printf(STDERR "filterDataToDateLine: %s\n",$res);
	return $res;
}
sub saveEmailToFile{
	(my $dataRef,my $indexRef,my $folderName, my $jarPath, my $id,my $imap) = @_;
	my %fileNames;
	for(("eml","pdf")){
		$fileNames{$_} = sprintf("%s%06d.%s",$folderName,$$indexRef,$_);
	}
	$imap->message_to_file($fileNames{eml},$id) 
		or die "Could not message_to_file: $@\n";
	myExec(sprintf("java -jar \"%s\" \"%s\"",$jarPath,$fileNames{eml}));
	unlink($fileNames{eml});
	$dataRef->{pdfpath} = $fileNames{pdf};
	${$indexRef}++;
}
sub parseDate{
	my $dateString = $_[0];
#			year   => 2006,
#			month  => 12,
#			day    => 25,
#			hour   => 10,
#			minute => 45,
#			second => 0,
	
#          'date' => 'Sun, 01 Jul 2018 11:48:41 +0900',
	if($dateString =~ /\w\w\w, (\d+) (\w\w\w) (\d\d\d\d) (\d\d):(\d\d):(\d\d) (\+\d+)/){
		my $dt = DateTime->new(
			day => ($1+0),
			month => ((first_index { $_ eq $2 } @MONTHNAMES )+1),
			year=>($3+0),
			hour => ($4+0),
			minute => ($5+0),
			second => ($6+0),
			time_zone=>$7,
		);
		$dt->set_time_zone('UTC');
		return (
			day => $dt->day,
			month => $dt->month,
			year => $dt->year,
			hour=> $dt->hour,
			minute=>$dt->minute,
			second=>$dt->second,
		);
	} else {
		die $dateString;
	}
}
sub processDate{
	(my $mailData) = @_;
	my $dateString = $mailData->{date};
	printf(STDERR "real date was %s\n",$dateString);
	$mailData->{date} = DateTime::Tiny->new(parseDate($dateString));
}

#main
my $myEmail, my $kEmail, my $month, my $folderName, my $jarPath;
GetOptions(
	"myemail=s" => \$myEmail, #my login name
	"kemail=s" => \$kEmail, #K's login name
	"dateFilter=s" => \$month, #e.g. 2018-07 means Jul 2018
	"folder=s" => \$folderName, #folder to save .pdfs (with / at the end)
	"jar=s" => \$jarPath, #path to emlconverter jar (see https://github.com/nickrussler/eml-to-pdf-converter)
);
$folderName //= "/Users/oleksiileontiev/Documents/emails/";
$jarPath //= "/Users/oleksiileontiev/bin/emailconverter.jar";

$kEmail = $kEmail."\@ms.u-tokyo.ac.jp";
my $mongoClient = MongoDB->connect();
my $mailPassword = $mongoClient->ns("admin.passwords")->find_one({key=>"MATHEMAIL"})->{value};
my $mongoCollection = $mongoClient->ns("admin.kmails");
printf(STDERR "myEmail: %s\nkEmail: %s\npassword: %s\n",$myEmail,$kEmail,$mailPassword);
my $imap = connectToMailBox($myEmail,"mail.ms.u-tokyo.ac.jp",$mailPassword);
my %filterData = (kmail=>$kEmail);
@filterData{"year","month"} = map {$_+0} split("-",$month);
$filterData{month}--;
printf(STDERR "year: %d, month: %d\n",@filterData{"year","month"});
$folderName = $folderName.$month."/";
myExec(sprintf("mkdir -p \"%s\"",$folderName));

my $i = 0;
for(@FOLDERDATA){
	my %folderDataItem = %$_;
	printf(STDERR "folder: %s\n",$folderDataItem{name});
	$imap->select($folderDataItem{name});
	for( $imap->since(filterDataToDateLine(\%filterData)) ) {
		my $id = $_;
		my %data = getEmailInfo($imap,$id);
		processEmailInfo(\%data);
		if($folderDataItem{filter}->(\%filterData,\%data))
		{
			processDate(\%data);
			$folderDataItem{label}->(\%data);
			printf(STDERR "\t%s\n",$data{subject});
			printf(STDERR "%s\n",Dumper(\%data));
			saveEmailToFile(\%data,\$i,$folderName,$jarPath,$id,$imap);
			$mongoCollection->insert_one(\%data);
		}
	}
}

