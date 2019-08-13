#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: webserver.pl
#
#        USAGE: ./webserver.pl  
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
#      CREATED: 08/11/19 21:52:21
#     REVISION: ---
#===============================================================================

package MyWebServer;
use strict;
use warnings;
use utf8;
use HTTP::Server::Simple::CGI;
use CGI qw/:standard :html3/;
use Template;
use POSIX;
use List::Util qw(sum);
use Data::Dumper;
use JSON;
use Path::Tiny qw( path );
#use API::Trello;
#use Net::Address::IP::Local;
use base qw(HTTP::Server::Simple::CGI);
#use Trello;


#global const's
my $CSSSTYLE =<<END;
END
#global var's
my $MongoClient = GetMongoClient();
my $TrelloClient = undef;
#procedures
sub handle_request {
	(my $self, my $cgi) = @_;
#		my $path = $cgi->path_info();
#		my $handler = $dispatch{$path};
    my $t = GetTrelloCards();
    $TrelloClient //= Trello->new({
            key=> $t->{key},
            token=> $t->{token},
        });
    my $tableRef = $TrelloClient->getBoards;
#    my $tableRef = $TrelloClient->getLists("5a83f33d7c047209445249dd");
#    my $tableRef = $TrelloClient->getCards("5a83f3449c950b04c540ba66");
 
	print "HTTP/1.0 200 OK\r\n";
	print $cgi->header,
		  $cgi->start_html(-title => sprintf("printEngageTable"),
			  -style => {
				  -code => $CSSSTYLE,
			  },
		  ),
#		  $cgi->div({-class=>"mainContainer"},
#			  PrintDiagrams($cgi,\@stat),
#			  $cgi->div({-class=>"legendContainer"},
#				  map {$cgi->div({-style=>sprintf("background-color: %s;",$_->{COLOR})},$_->{LABEL})} @CATEGORIES
#			  ),
#		  ),
          $cgi->p($cgi->code(to_json($TrelloClient->getMemberInfo,{pretty=>1}))),
          $cgi->p($cgi->code(scalar(@$tableRef))),
#          $cgi->p($cgi->code(to_json($tableRef,{pretty=>1}))),
#		,HABITS("kDCITi9O")
          $cgi->table({-border=>1},
              map {
                  $cgi->Tr(
                      $cgi->td($$_{id}),
                      $cgi->td($$_{name}),
                  )
              } @$tableRef
          ),
#          $cgi->p($cgi->code($FindBin::Bin)),
		  $cgi->end_html;
}
sub GetTrelloCards {
	my $trelloKey = $MongoClient->ns("admin.passwords")->find_one({key=>"TRELLOKEY"})->{value};
	my $trelloToken = $MongoClient->ns("admin.passwords")->find_one({key=>"TRELLOTOKEN"})->{value};
	return {
        key => $trelloKey,
        token => $trelloToken,
	};
}
sub GetMongoClient {
	my $client = MongoDB->connect();
#	my $mongoPassword = $MongoClient->ns("admin.passwords")->find_one({key=>"MONGOMLAB"})->{value};
#	$MongoClient = MongoDB->connect(sprintf("mongodb://%s:%s\@ds149672.mlab.com:49672/logistics",
#			"nailbiter",$mongoPassword));
	return $client;
}

#main
1;
