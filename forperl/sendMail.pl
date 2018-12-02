#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: sendmail.pl
#
#        USAGE: ./sendmail.pl  
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
#  LIMITATIONS: *) cannot send outside ms.u-tokyo.ac.jp (resolved?)
#  				*) cannot send attachments
#===============================================================================

use strict;
use warnings;
use utf8;
use MongoDB;
use IO::Socket::SSL;
use Data::Dumper;
use Getopt::Long;
use Email::MIME;
use Email::Sender::Simple qw(sendmail);
use Mail::IMAPClient;


#global const's
my $MAILSUFFIX = "\@ms.u-tokyo.ac.jp";
my $SENTFOLDER = '1.Sent Messages';
my $IMAPSERVER = 'mail.ms.u-tokyo.ac.jp';
#global var's
my $Testflag = 0;
my $MailPass;
#procedures
sub parseMailFile{
	(my $filename) = @_;
	my $res = {BODY => ""};
	open(my $fh, '< :encoding(UTF-8)', $filename);
	while(<$fh>){
		chomp;
		printf(STDERR "line: %s\n",$_);
		if(/^#([A-Z]+) (.*)/){
			$res->{$1} = $2;
		} else {
			$res->{BODY} = $res->{BODY} . $_ . "\n";
		}
	}
	return $res;
}
#sub mysendmail{
#	(my %mail) = @_;
#	printf("going to send: %s\n",Dumper(\%mail));
#	return if($Testflag);
#	my $message = Email::MIME->create(
#	  header_str => [
#		From    => $mail{FROM},
#		To      => $mail{TO},
#		Subject => $mail{TOPIC},
#	  ],
#	  attributes => {
#		encoding => 'quoted-printable',
#		charset  => 'UTF-8',
#	  },
#	  body_str => $mail{BODY},
#	);
#	sendmail($message);
#}
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
sub mySaveToSentMail{
	(my $login, my $mime) = @_;
#	printf("going to save %s\n",Dumper(\%mail));
#	my $MailPass = $mongoClient->ns("admin.passwords")->find_one({key=>"MATHEMAIL"})->{value};
#	my $login = $mail{FROM} =~ s/\@.*//r;
	my $imap = connectToMailBox($login,$IMAPSERVER,$MailPass);
#	$imap->select($SENTFOLDER);
#	$imap->message_to_file('/Users/oleksiileontiev/Downloads/test.eml',5006);
	printf("%s: %s\n",'mailToMime',Dumper($mime->as_string));
	$imap->append($SENTFOLDER,$mime->as_string) unless($Testflag);
#	return $imap;
#	printf("%s\n",join(' ',@INC));
}
sub mailToMime{
	(my %mail) = @_;
	my $email = Email::MIME->create(
	  header_str => [
		From    => $mail{FROM},
		To      => $mail{TO},
		Subject => $mail{TOPIC},
	  ],
	  attributes => {
		encoding => 'quoted-printable',
		charset  => 'UTF-8',
	  },
	  body_str => $mail{BODY},
	); 
	return $email;
}

#main
my $mongoClient = MongoDB->connect();
my %cmdline;
GetOptions(
	"myemail=s" => \$cmdline{myemail}, #my login name
	"testflag=i" => \$Testflag,
	"mail=s" => \$cmdline{filename}
);

$cmdline{filename} //= '/Users/oleksiileontiev/Downloads/mail.mail';
$cmdline{myemail} //= $mongoClient->ns("admin.passwords")->find_one({key=>"MYMATHMAILLOGIN"})->{value};

$MailPass = $mongoClient->ns("admin.passwords")->find_one({key=>"MATHEMAIL"})->{value};
my $mail = parseMailFile($cmdline{filename});
$mail->{FROM} = $cmdline{myemail}.$MAILSUFFIX;
my $mime = mailToMime(%$mail);
sendmail($mime) unless($Testflag);
mySaveToSentMail($mail->{FROM} =~ s/\@.*//r,$mime);
