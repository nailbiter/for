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
#        FIXME: *) cannot send outside ms.u-tokyo.ac.jp (resolved?)
#  				*) cannot send attachments
#      PRAGMAS: TO
#      			FROM
#      			TOPIC
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

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");
binmode(STDERR, ":utf8");


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
		if(/^#([A-Z]+) (.*)/){
			printf(STDERR "line(p): %s\n",$_);
			$res->{$1} = $2;
		} else {
			printf(STDERR "line(b): %s\n",$_);
			$res->{BODY} = $res->{BODY} . $_ . "\n";
		}
	}

	printf(STDERR "res: %s\n",Dumper($res));
	return $res;
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
sub mySaveToSentMail{
	(my $login, my $mime) = @_;
	my $imap = connectToMailBox($login,$IMAPSERVER,$MailPass);
	printf("%s: %s\n",'mailToMime',Dumper($mime->as_string));
	$imap->append($SENTFOLDER,$mime->as_string) unless($Testflag);
}
sub mailToMime{
	(my %mail) = @_;

	my @header_str = (
		From    => $mail{FROM},
		To      => $mail{TO},
		Subject => $mail{TOPIC},
	);
	if( exists($mail{CC}) ){
		push(@header_str,'Cc');
		push(@header_str,$mail{CC});
	}

	my $email = Email::MIME->create(
	  header_str => \@header_str,
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
