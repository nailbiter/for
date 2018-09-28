#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: rereg.pl
#
#        USAGE: ./rereg.pl  
#
#  DESCRIPTION: rereg
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/28/2018 05:22:46 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use CGI qw(-utf8);
use CGI::Carp qw(fatalsToBrowser);

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");

#global var's
my $q = new CGI;

#procedures
sub print_textfields{
    my %hash = %{$_[0]};
    for(keys %hash){
        print $q->h4($hash{$_});
        print $q->textfield(
            -name      => $_,
            -value     => '',
            -size      => 20,
            -maxlength => 30,
        );
    }
}

#main
print $q->header("text/html;charset=UTF-8");
print $q->start_html(-title => 'A web form');
if($q->param()){
    print $q->h4(sprintf("name1: \"%s\" of len %d",$q->param('login'),length $q->param('login')));
}else{
    print $q->start_form(
        -action=>'/rereg.pl');
    print_textfields({key=>'key',});
    print_textfields({login=>'Your email login (that is, if your email is <code>xxx@ms.u-tokyo.ac.jp</code>, input <code>xxx</code>)',});
    print_textfields({OS=>'MacOS+X',});
    print_textfields({MAC=>'8C:85:90:B5:42:B8',});
    print_textfields({date=>'2018-09-30',});
    print_textfields({emergency=>'Alex+Leontiev',});
    print_textfields({room=>"Your room number (3-digit number, e.g. <code>406</code>)",});
    print_textfields({date=>'Date when you want to re-register (usually the <i>next day after</i> the 利用期限 in email from <code>cnmg@ms.u-tokyo.ac.jp</code>)',});
    print_textfields({dueDate=>'2018-10-14',});
    print $q->br;
	print $q->submit(
			-name     => 'submit_form',
			-value    => 'Click here!',
		);
    print $q->end_form;
}
print $q->end_html;
