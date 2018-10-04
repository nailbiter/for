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
my @fields=(
    key=>'key',
    login=>'Your email login (that is, if your email is <code>xxx@ms.u-tokyo.ac.jp</code>, input <code>xxx</code>)',
    OS=>["OS of the PC you want to register",'Windows 10','Windows 8','Windows 7','Windows Vista','MacOS X','iOS','Android OS','Linux系 OS','BSD系 OS','その他のUNIX系 OS','ネットワークプリンタ','その他'],
    MAC=>'MAC address (e.g. <code>8C:85:90:B5:42:B8</code>)',
    emergency=>'Your name (e.g. <code>John Smith</code>)',
    room=>"Your room number (3-digit number, e.g. <code>406</code>)",
    pcname=>'Alias of the computer (e.g. <code>Johns MacBook</code>; use only spaces and alphanumericals)',
    date=>'Date when you want to re-register in <code>yyyy-MM-dd</code> format (usually the <i>next day after</i> the 利用期限 in email from <code>cnmg@ms.u-tokyo.ac.jp</code>, that is if 利用期限 was <code>2018-10-01</code>, you should set <code>2018-10-02</code>)',
    dueDate=>'New due date (usually, two weeks after the date in previous field)',
);

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
sub prefill{
    my $q = $_[0];
    my $record = $_[1]->find({key=>$q->param('key')},{sort=>{date=>-1}})->next;
    if(!$record){
        print $q->h2(sprintf("sorry, but name <b>%s</b> was not found",$q->param('key')));
    }
    print $q->start_form(
        -action=>'/rereg.pl');
    for(my $i=0; $i<=$#fields;$i+=2){
        if(ref($fields[$i+1]) eq 'ARRAY'){
            my @arr = @{$fields[$i+1]};
            my $explanation = shift @arr;
            print $q->h4($explanation);
            print $q->scrolling_list($fields[$i],\@arr,$record->{$fields[$i]});
        }
        else{
            print_textfields($fields[$i],$fields[$i+1],$record);
        }
    }
    print $q->br;
    print $q->submit(
            -name     => 'submit_form',
            -value    => 'Submit',
        );
    print $q->end_form;
}

#main
print $q->header("text/html;charset=UTF-8");
print $q->start_html(-title => 'A web form');
if($q->param()){
    my $records = MongoDB->connect()->ns("test.reregistration");
    if($q->param('login') eq ''){
        prefill($q,$records);
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
    for(my $i=0; $i<=$#fields;$i+=2){
        if(ref($fields[$i+1]) eq 'ARRAY'){
            my @arr = @{$fields[$i+1]};
            my $explanation = shift @arr;
            print $q->h4($explanation);
            print $q->scrolling_list($fields[$i],\@arr);
        }
        else{
            print_textfields($fields[$i],$fields[$i+1]);
        }
    }
    print $q->br;
	print $q->submit(
			-name     => 'submit_form',
			-value    => 'Submit',
		);
    print $q->end_form;
}
print $q->end_html;
