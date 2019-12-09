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
use Template;


#global const's
my $_TO_STRING_TEMPLATE = <<'END_BLURB';
$title

checklists:
[%FOREACH c IN checklists-%]
  ${c.NAME}:
    [% FOREACH i IN c.ITEMS -%]
      [%IF i.state == "complete"%]v[%ELSE%]x[%END%] ${i.name}
    [%END%]
[%END-%]
END_BLURB
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
sub GetTrelloChecklist {
	(my $code,my $trelloKey,my $trelloToken) = @_;
	my $url = sprintf("https://api.trello.com/1/checklist/%s?key=%s&token=%s",$code,$trelloKey,$trelloToken);
	printf(STDERR "code: %s\nurl: %s\n",$code,$url);
	my $req = HTTP::Request->new( GET=> $url );
	my $lwp = LWP::UserAgent->new;
	my $res = $lwp->request( $req );
	return ($req,$lwp,$res);
}
sub get_checklists {
	(my $self) = @_;
	my @checklists;
	for my $id ( @{$self->{res}->{idChecklists}} ) {
		(my $req, my $lwp, my $res) = GetTrelloChecklist($id, $self->{KEY}, $self->{TOKEN});
		$res = from_json($lwp->request( $req )->{_content});
		printf(STDERR "got checklist %s\n",to_json($res,{canonical=>1,pretty=>1}));
		my @items = sort {$$a{pos} <=> $$b{pos}} @{$$res{checkItems}};
		push(@checklists,{
				ITEMS=>\@items,
				NAME=>$$res{name},
			});
	}
	return \@checklists,
}
sub get_title {
	(my $self) = @_;
	return $self->load->{res}->{name};
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
	my $res;
    my $tt = Template->new(
        INCLUDE_PATH=>"$FindBin::Bin/.printEngageTable.d/templates",
        INTERPOLATE=>1,
    );
    $tt->process(\$_TO_STRING_TEMPLATE,{
			title=>$self->get_title,
			checklists=>$self->get_checklists,
        });
	return $res;
}

#main
1;
