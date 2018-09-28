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
use Data::Dumper;
use MongoDB;

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");

#global var's
my $q = new CGI;

#procedures
sub print_textfields{
    my $defVal = (scalar(@_)<3)?'':$_[2]->{$_[0]};
    print $q->h4($_[1]);
    print $q->textfield(
        -name      => $_[0],
        -default     => $defVal,
        -override=>1,
        -size      => 20,
        -maxlength => 30,
    );
}

#main
print $q->header("text/html;charset=UTF-8");
print $q->start_html(-title => 'A web form');
if($q->param()){
    my $records = MongoDB->connect()->ns("test.reregistration");
    if($q->param('login') eq ''){
        my $record = $records->find_one({key=>$q->param('key')});
        if(!$record){
            print $q->h2(sprintf("sorry, but name <b>%s</b> was not found",$q->param('key')));
        }
        print $q->start_form(
            -action=>'/rereg.pl');
        print_textfields("key",'key',$record);
        print_textfields("login",'Your email login (that is, if your email is <code>xxx@ms.u-tokyo.ac.jp</code>, input <code>xxx</code>)',$record);
        print $q->h4("OS of the PC you want to register");
        print $q->scrolling_list('OS',['Windows 10','Windows 8','Windows 7','Windows Vista','MacOS X','iOS','Android OS','Linux系 OS','BSD系 OS','その他のUNIX系 OS','ネットワークプリンタ','その他',],$records->{OS});
        print_textfields("MAC",'MAC address (e.g. <code>8C:85:90:B5:42:B8</code>)',$record);
        print_textfields("emergency",'Your name (e.g. <code>John Smith</code>)',$record);
        print_textfields("room","Your room number (3-digit number, e.g. <code>406</code>)",$record);
        print_textfields("date",'Date when you want to re-register in <code>yyyy-MM-dd</code> format (usually the <i>next day after</i> the 利用期限 in email from <code>cnmg@ms.u-tokyo.ac.jp</code>, that is if 利用期限 was <code>2018-10-01</code>, you should set <code>2018-10-02</code>)',$record);
        print_textfields("dueDate",'New due date (usually, two weeks after the date in previous field)',$record);
        print $q->br;
        print $q->submit(
                -name     => 'submit_form',
                -value    => 'Submit',
            );
        print $q->end_form;
    }else{
        #FIXME: validate
        print $q->h3("successfully saved to database");
        print("<center><table>\n");
        my %hash;
        for($q->param){
            if($_ eq 'submit_form'){
                next;
            }
            $hash{$_} = $q->param($_);
            printf("<tr><td>%s</td><td>%s</td></tr>\n",$_,$q->param($_));
        }
        my $id = $records->insert_one(\%hash);
        print("</table></center>\n");
       print $q->h4(sprintf("id: %s",$id->{inserted_id}));
    }
}else{
    print $q->start_form(
        -action=>'/rereg.pl');
    print_textfields("key",'key');
    print_textfields("login",'Your email login (that is, if your email is <code>xxx@ms.u-tokyo.ac.jp</code>, input <code>xxx</code>)');
    print $q->h4("OS of the PC you want to register");
    print $q->scrolling_list('OS',['Windows 10','Windows 8','Windows 7','Windows Vista','MacOS X','iOS','Android OS','Linux系 OS','BSD系 OS','その他のUNIX系 OS','ネットワークプリンタ','その他',]);
    print_textfields("MAC",'MAC address (e.g. <code>8C:85:90:B5:42:B8</code>)');
    print_textfields("emergency",'Your name (e.g. <code>John Smith</code>)');
    print_textfields("room","Your room number (3-digit number, e.g. <code>406</code>)");
    print_textfields("date",'Date when you want to re-register in <code>yyyy-MM-dd</code> format (usually the <i>next day after</i> the 利用期限 in email from <code>cnmg@ms.u-tokyo.ac.jp</code>, that is if 利用期限 was <code>2018-10-01</code>, you should set <code>2018-10-02</code>)');
    print_textfields("dueDate",'New due date (usually, two weeks after the date in previous field)');
    print $q->br;
	print $q->submit(
			-name     => 'submit_form',
			-value    => 'Submit',
		);
    print $q->end_form;
}
print $q->end_html;
