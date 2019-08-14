#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: trello.pl
#
#        USAGE: ./trello.pl  
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
#      CREATED: 08/11/19 22:24:24
#     REVISION: ---
#===============================================================================

package Trello;
use strict;
use warnings;
use utf8;
use HTTP::Request;
use LWP::UserAgent;
use LWP::Simple;
use JSON::Parse 'parse_json';
use JSON;
#use WWW::Curl;

#global const's
my $USERNAME = "nailbiter";
#procedures
sub JsonToUrl {
    my %obj = @_;
    return join("&",map {sprintf("%s=%s",$_,$obj{$_});} keys(%obj));
}
sub new {
    (my $class, my $args) = @_;
    my $self = bless {
        key => $args->{key},
        token =>  $args->{token},
    }, $class;
}

#sub getSelf {
#    (my $self) = @_;
#    return {
#        key => $self->{key},
#        token => $self->{token},
#    };
#}

sub _fetch{
    (my $self, my %url) = @_;
	my $req = HTTP::Request->new( %url );
	my $lwp = LWP::UserAgent->new;
	my $res = $lwp->request( $req );
	my $res = $res->{_content};
	printf(STDERR "res: %s\n",$res);
	$res = parse_json( $res );
    return $res;
}
sub getBoards {
    (my $self) = @_;
	return $self->_fetch(GET=>sprintf(
        "https://api.trello.com/1/members/%s/boards?filter=all&fields=all&lists=none&memberships=none&organization=false&organization_fields=name%%2CdisplayName&%s",
        $USERNAME,
        JsonToUrl(key=>$self->{key}, token=>$self->{token}),
    ));
}

sub getMemberInfo {
    (my $self) = @_;
	return $self->_fetch( GET => sprintf(
        "https://api.trello.com/1/tokens/%s?%s",
        $self->{token},
        JsonToUrl(key=>$self->{key}, token=>$self->{token}),
    ));
}

sub getCards {
    (my $self, my $listId) = @_;
	return $self->_fetch( GET => sprintf(
        "https://api.trello.com/1/lists/%s/cards?%s",
        $listId,
        JsonToUrl(key=>$self->{key}, token=>$self->{token}),
    ));
}

sub getLists {
    (my $self, my $boardId) = @_;
	return $self->_fetch( GET => sprintf(
        "https://api.trello.com/1/boards/%s/lists?%s",
#        $self->{token},
        $boardId,
        JsonToUrl(key=>$self->{key}, token=>$self->{token}),
    ));
}

#main
1;
