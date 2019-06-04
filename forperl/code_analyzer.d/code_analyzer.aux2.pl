#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: code_analyzer.aux2.pl
#
#        USAGE: ./code_analyzer.aux2.pl  
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
#      CREATED: 2019年04月29日 11時58分45秒
#     REVISION: ---
#===============================================================================

package MyWebServer;
use strict;
use warnings;
use utf8;
use FindBin;
use HTTP::Server::Simple::CGI;
use base qw(HTTP::Server::Simple::CGI);
 

#global const's
#	my %dispatch = (
#		'/hello' => \&resp_hello,
#	);
#global var's
#procedures
sub handle_request {
	(my $self, my $cgi) = @_;
#		my $self = shift;
#		my $cgi  = shift;
   
#		my $path = $cgi->path_info();
#		my $handler = $dispatch{$path};
 
	print "HTTP/1.0 200 OK\r\n";
	CodeAnalyzer($cgi);
#		if (ref($handler) eq "CODE") {
##			$handler->($cgi);
#		} else {
##			print "HTTP/1.0 404 Not found\r\n";
##			print $cgi->header,
##				  $cgi->start_html('Not found'),
##				  $cgi->h1('Not found at the moment'),
##				  $cgi->end_html;
#		}
}
sub resp_hello {
	my $cgi  = shift;   # CGI.pm object
	return if !ref $cgi;
	 
	my $who = $cgi->param('name');
	 
	print $cgi->header,
		  $cgi->start_html("Hello"),
		  $cgi->h1("Hello $who!"),
		  $cgi->end_html;
}

#main
1;
