#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: mailparser.pl
#
#        USAGE: ./mailparser.pl  
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

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");
binmode(STDERR, ":utf8");

#global const's
my @MONTHNAMES = (
	"Jan","Feb",
	"Mar","Apr","May",
	"Jun","Jul","Aug",
	"Sep","Oct","Nov",
	"Dec",
);
my %FOLDERDATA = (
	"INBOX" => {
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
	"1/Sent Messages" => {
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

#main
my $myEmail, my $kEmail, my $month, my $folderName;
GetOptions(
	"myemail=s" => \$myEmail,
	"kemail=s" => \$kEmail,
	"dateFilter=s" => \$month, #e.g. 2018-07 means Jul 2018
	"folder=s" => \$folderName,
);
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
for(keys(%FOLDERDATA)){
	my $folderDataItem = $FOLDERDATA{$_};
	printf(STDERR "folder: %s",$_);
	$imap->select($_);
	for( $imap->since(filterDataToDateLine(\%filterData)) ) {
		my $id = $_;
		my %data = getEmailInfo($imap,$id);
		processEmailInfo(\%data);
		if($folderDataItem->{filter}->(\%filterData,\%data))
		{
			$folderDataItem->{label}->(\%data);
			print "\t".$data{subject}."\n";
			print Dumper(\%data);
			$mongoCollection->insert_one(\%data);
#			$imap->message_to_file("/Users/oleksiileontiev/Downloads/emails/test.txt",$id) 
#				or die "Could not message_to_file: $@\n";
		}
	}
}
