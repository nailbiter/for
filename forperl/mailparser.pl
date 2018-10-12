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

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");
binmode(STDERR, ":utf8");

#global const's

#global var's

#main
my $myEmail, my $kEmail;
GetOptions(
	"myemail=s" => \$myEmail,
	"kemail=s" => \$kEmail,
);
$myEmail = $myEmail . "\@ms.u-tokyo.ac.jp";
$kEmail = $kEmail . "\@ms.u-tokyo.ac.jp";
my $client = MongoDB->connect();
my $mailPassword = $client->ns("admin.passwords")->find_one({key=>"MATHEMAIL"})->{value};
printf(STDERR "myEmail: %s\nkEmail: %s\npassword: %s",$myEmail,$kEmail,$mailPassword);
my $host = "mail.ms.u-tokyo.ac.jp:993";
my $imap = Mail::IMAPClient->new(  
                Server => $host,
                User    => $myEmail,
                Password=> $mailPassword,
                Clear   => 5,   # Unnecessary since '5' is the default
#               ...             # Other key=>value pairs go here
)       or die "Cannot connect to $host as $myEmail $@";
