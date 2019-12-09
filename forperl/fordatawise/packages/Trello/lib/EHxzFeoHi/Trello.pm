#
#===============================================================================
#
#         FILE: Trello.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 12/09/2019 15:11:38
#     REVISION: ---
#===============================================================================

package EHxzFeoHi::Trello; 
use strict;
use warnings;
use JSON;
use HTTP::Request;
use LWP::UserAgent;
use MongoDB;


#procedures
sub _GetTrelloPasswords{
	my $client = MongoDB->connect();
	my $secret = $client->ns("admin.passwords");
	my $key = $secret->find_one({key=>'TRELLOKEY'})->{'value'};
	printf(STDERR "key: %s\n",$key);
	my $token = $secret->find_one({key=>'TRELLOTOKEN'})->{'value'};
	printf(STDERR "token: %s\n",$token);
	return ($key,$token);
}
sub load {
	(my $self) = @_;
	if( not $self->{is_loaded} ) {
		(my $URL,my $trelloKey,my $trelloToken) = @$self{qw(URL KEY TOKEN)};
		$URL =~ /([0-9a-zA-Z]*)$/;
		my $code = $1;
		my $url = sprintf("https://api.trello.com/1/cards/%s?key=%s&token=%s",$code,$trelloKey,$trelloToken);
		printf(STDERR "code: %s\nurl: %s\n",$code,$url);

		my $req = HTTP::Request->new( GET=> $url );
		my $lwp = LWP::UserAgent->new;
		my $res = $lwp->request( $req );
		if( not $res->is_success ) {
			die "no success";
		} else {
			$self->{res} = from_json($res->{_content});
			printf(STDERR "got card: %s\n",to_json($self->{res},{canonical=>1,pretty=>1,}));
		}
		$self->{is_loaded} = 1;
	}
	return $self;
}
#sub GetTrelloChecklist {
#	(my $code,my $trelloKey,my $trelloToken) = @_;
#	my $url = sprintf("https://api.trello.com/1/checklist/%s?key=%s&token=%s",$code,$trelloKey,$trelloToken);
#	printf("code: %s\nurl: %s\n",$code,$url);
#	my $req = HTTP::Request->new( GET=> $url );
#	my $lwp = LWP::UserAgent->new;
#	my $res = $lwp->request( $req );
#	return ($req,$lwp,$res);
#}
sub get_title {
	(my $self) = @_;
	return $self->load->{res}->{name};
#		my @checklists;
#		for my $id ( @{$$res{idChecklists}} ) {
#			(my $req, my $lwp, my $res) = GetTrelloChecklist($id, $trelloKey, $trelloToken);
#			$res = parse_json($lwp->request( $req )->{_content});#->{checkItems};
#			printf(STDERR "got checklist %s\n",Dumper($res));
#			push(@checklists,{
#					ITEMS=>$$res{checkItems},
#					NAME=>$$res{name},
#				});
#		}
#			checklist=>\@checklists,
}
sub new {
	(my $class,my %args) = @_;

	if( $args{KEY} && $args{TOKEN} ) {
		printf(STDERR "def: %s\n",join(", ",@args{qw(KEY TOKEN)}));
	} else {
		printf(STDERR "not def\n");
		@args{qw(KEY TOKEN)} = _GetTrelloPasswords();
	}

	if( defined $args{URL} ) {
		my $self = bless {
			URL=>$args{URL},
			KEY=>$args{KEY},
			TOKEN=>$args{TOKEN},
		}, $class;
		return $self;
	} else {
		die to_json(\%args,{pretty=>1,canonical=>1});
	}
}
sub toString {
	(my $self) = @_;
	return sprintf("title: %s\n",$self->get_title);
}

#main
1;
