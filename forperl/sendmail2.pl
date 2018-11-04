#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: sendmail2.pl
#
#        USAGE: ./sendmail2.pl  
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
#      CREATED: 11/04/18 14:40:47
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use MongoDB;
use Getopt::Long;
use Email::MIME;
use Email::Sender::Simple qw(sendmail);


#global const's
my $MAILSUFFIX = "\@ms.u-tokyo.ac.jp";

#main
my %cmdline;
GetOptions(
	"myemail=s" => \$cmdline{myemail}, #my login name
	"to=s" => \$cmdline{to},
);
$cmdline{to} //= ($cmdline{myemail}.$MAILSUFFIX);
if($cmdline{to} !~ /\@/){
	$cmdline{to} .= $MAILSUFFIX;
	printf(STDERR "to=%s now\n",$cmdline{to});
}

my $mongoClient = MongoDB->connect();
my $mailPassword = $mongoClient->ns("admin.passwords")->find_one({key=>"MATHEMAIL"})->{value};
my $message = Email::MIME->create(
  header_str => [
    From    => ($cmdline{myemail}.$MAILSUFFIX),
    To      => $cmdline{to},
    Subject => 'Happy birthday!',
  ],
  attributes => {
    encoding => 'quoted-printable',
    charset  => 'UTF-8',
  },
  body_str => "宜しく！\n",
);
sendmail($message);
