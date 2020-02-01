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
use File::Basename;


#global const's
#procedures
sub _GetTrelloPasswords{
	(my $pass_id) = @_;
	my $client = MongoDB->connect();
	my $secret = $client->ns("admin.passwords");
	if( not $pass_id ) {
		my $key = $secret->find_one({key=>'TRELLOKEY'})->{'value'};
		printf(STDERR "key: %s\n",$key);
		my $token = $secret->find_one({key=>'TRELLOTOKEN'})->{'value'};
		printf(STDERR "token: %s\n",$token);
		return ($key,$token);
	} else {
		my $obj = $secret->find_one({name=>sprintf("%s-trello",$pass_id)});
		(my $key,my $token) = ($obj->{key},$obj->{token});
		printf(STDERR "keys: %s",to_json({key=>$key,token=>$token},{pretty=>1,canonical=>1}));
		return ($key,$token);
	}
}
sub _load {
	(my $self) = @_;
	if( not $self->{is__loaded} ) {
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
		$self->{is__loaded} = 1;
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
sub _get_checklist {
	(my $self,my $id) = @_;
	$self->{cache_}->{checklists} //= {};
	unless( $self->{cache}->{checklists}->{$id} ) {
		(my $req, my $lwp, my $res) = GetTrelloChecklist($id, $self->{KEY}, $self->{TOKEN});
		$res = from_json($lwp->request( $req )->{_content});
		printf(STDERR "got checklist %s\n",to_json($res,{canonical=>1,pretty=>1}));
		my @items = sort {$$a{pos} <=> $$b{pos}} @{$$res{checkItems}};
		$self->{cache}->{checklists}->{$id} = {
			ITEMS=>\@items,
			NAME=>$$res{name},
		}
	}
	return $self->{cache}->{checklists}->{$id};
}
sub get_checklists {
	(my $self) = @_;
	my @checklists;
	for my $id ( @{$self->_load->{res}->{idChecklists}} ) {
		push(@checklists,$self->_get_checklist($id));
	}
	return \@checklists,
}
sub get_title {
	(my $self) = @_;
	return $self->_load->{res}->{name};
}
sub new {
	(my $class,my %args) = @_;

	if( $args{KEY} && $args{TOKEN} ) {
		printf(STDERR "def: %s\n",join(", ",@args{qw(KEY TOKEN)}));
	} else {
		printf(STDERR "not def\n");
		@args{qw(KEY TOKEN)} = _GetTrelloPasswords($args{PASS_ID});
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
sub getNumChecklistItems {
	(my $self) = @_;
	my $res = 0;
	for my $id ( @{$self->_load->{res}->{idChecklists}} ) {
		for(@{$self->_get_checklist($id)->{ITEMS}}) {
			$res++;
		}
	}
	return $res;
}
sub getNumCheckedChecklistItems {
	(my $self) = @_;
	my $res = 0;
	for my $id ( @{$self->_load->{res}->{idChecklists}} ) {
		for(@{$self->_get_checklist($id)->{ITEMS}}) {
			if($_->{state} eq "complete") {
				$res++;
			}
		}
	}
	return $res;
}
sub getUrl{
	(my $self) = @_;
	return $self->{URL};
}
sub toString {
	(my $self) = @_;
	my $res;
	(undef,my $dir,undef) = fileparse(__FILE__, qr/\Q.txt\E/);
	print STDERR __FILE__,"\n";
	print STDERR $dir,"\n";
    my $tt = Template->new(
        INCLUDE_PATH=>$dir,
        INTERPOLATE=>1,
    );
    $tt->process("to_string.template.txt",{
			card=>$self,
        },
		\$res,
	);
	print STDERR "res: ",$res,"\n";
	return $res;
}
sub archive {
	(my $self) = @_;

	(my $URL,my $trelloKey,my $trelloToken) = @$self{qw(URL KEY TOKEN)};
	$URL =~ /([0-9a-zA-Z]*)$/;
	my $code = $1;
	printf(STDERR "code: %s\n",$code);
	my $url = sprintf("https://api.trello.com/1/cards/%s?closed=true&key=%s&token=%s",$code,$trelloKey,$trelloToken);
	my $req = HTTP::Request->new( PUT=> $url );
	my $lwp = LWP::UserAgent->new;
	my $res = $lwp->request( $req );
	if( not $res->is_success ) {
		die "no success";
	} else {
		printf(STDERR "reply: %s\n",$res->{_content});
	}
}

#main
1;
