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

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");
#binmode(STDERR, ":utf8");

#global const's
my %FOLDERDATA = (
	"INBOX" => {
		filter=> sub {
			(my $kmail,my $hash) = @_;
			my $res = grep(/$kmail/,@{$hash->{From}});
			return $res;
		},
	},
	"1/Sent Messages" => {
		filter => sub {
			(my $kmail,my $hash) = @_;
			my $res = grep(/$kmail/,@{$hash->{To}});
			return $res;
		},
	},
);
#global var's

#main
my $myEmail, my $kEmail;
GetOptions(
	"myemail=s" => \$myEmail,
	"kemail=s" => \$kEmail,
);
$kEmail = $kEmail."\@ms.u-tokyo.ac.jp";
my $mongoClient = MongoDB->connect();
my $mailPassword = $mongoClient->ns("admin.passwords")->find_one({key=>"MATHEMAIL"})->{value};
printf(STDERR "myEmail: %s\nkEmail: %s\npassword: %s",$myEmail,$kEmail,$mailPassword);
my $host = "mail.ms.u-tokyo.ac.jp";
my $ssl=new IO::Socket::SSL("$host:imaps");
die ("Error connecting - $@") unless defined $ssl;
$ssl->autoflush(1);
my $imap = Mail::IMAPClient->new(  
				Socket=>$ssl,
#				Debug=>1,
                Server => $host,
                User    => $myEmail,
                Password=> $mailPassword,
                Clear   => 5,   # Unnecessary since '5' is the default
#               ...             # Other key=>value pairs go here
)       or die "Cannot connect to $host as $myEmail $@";
printf(STDERR "connected: %s\n",$imap->Connected());
printf(STDERR "authenticated %s\n",$imap->Authenticated());
for(keys(%FOLDERDATA)){
	my $folderDataItem = $FOLDERDATA{$_};
	$imap->select($_);
	for( $imap->search('ALL') ) {
		my %data;
		$data{date} = $imap->date( $_ );
		$data{subject} = decode('MIME-Header',$imap->subject($_));
		my $hashref = $imap->parse_headers($_,"From","To");
		@data{"From","To"} = @{$hashref}{"From","To"};
		if($folderDataItem->{filter}->($kEmail,\%data))
		{
#			print "\t".decode('MIME-Header',$imap->subject($_))."\n";
			print "\t".$data{subject}."\n";
			print Dumper(\%data);
		}
	}
}
