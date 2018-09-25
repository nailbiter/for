#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: sendMail.pl
#
#        USAGE: ./sendMail.pl [-p PASSWORD] [-m MAILFILE.mail]
#
#  DESCRIPTION: send mail
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
# 		STATUS:	not working (at the moment)
#      VERSION: 1.0
#      CREATED: 09/25/18 22:23:00
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;
use Email::MIME;
use Email::Sender::Simple qw(sendmail);
use Email::Sender::Transport::SMTPS;
use Try::Tiny;
use Email::Simple::Creator; # or other Email::
use Email::Sender::Simple qw(sendmail);

#main
my $password = '', my $mailfile = '';
GetOptions ('password=s' => \$password, 'mailfile=s'=>\$mailfile);
printf("p=%s\nm=%s\n",$password,$mailfile);
my $transport = Email::Sender::Transport::SMTPS->new(
		host => 'mail.ms.u-tokyo.ac.jp',
		ssl  => 'starttls',
		sasl_username => 'leontiev',
		sasl_password => $password,
		debug => 1, # or 1
);
open(my $fh, '<:encoding(UTF-8)', $mailfile)
  or die "Could not open file '$mailfile' $!";
my $body = "";
#my %mailHeader = (From => 'leontiev@ms.u-tokyo.ac.jp');
my $mailstring = "";
my $email = Email::Simple->new(\$mailstring);
$email->header_set("From", 'leontiev@ms.u-tokyo.ac.jp');
$email->header_set( 'Content-Type' => 'text/html' );
$email->header_set( 'charset' => 'UTF-8' );
$email->header_set( 'Content-Transfer-Encoding' => '8bit');
while(<$fh>){
	if(/^#TOPIC *(.*)$/){
		printf("topic: \"%s\"\n",$1);
		$email->header_set("Subject", $1);
		next;
	}
	if(/^#TO *(.*)$/){
		printf("to: \"%s\"\n",$1);
		$email->header_set("To", $1);
		next;
	}
	if(/^#CC *(.*)$/){
		printf("cc: \"%s\"\n",$1);
		$email->header_set("Cc", $1);
		next;
	}
	$body .= $_;
}
printf("%s\n",$body);
#FIXME
#$email->body_set($body);
$email->body_set("body");
#print join(", ",keys(%mailHeader))."\n";
#my $mr = \@%mailHeader;
#my $message = Email::Simple->create(
#		header => $mr,
#		body => $body,
#);

try {
		sendmail($email, { transport => $transport });
} catch {
		die "Error sending email: $_";
};
