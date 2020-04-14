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

package EHxzFeoHi::Trello::Card; 
use strict;
use warnings;
use JSON;
use HTTP::Request;
use LWP::UserAgent;
use MongoDB;
use Template;
use File::Basename;
use URI::Escape;
use Path::Tiny qw(path);


#global const's
(undef,my $DIR,undef) = fileparse(__FILE__, qr/\Q.txt\E/);
require "$DIR/Base.pm";
#procedures
sub _load {
	(my $self) = @_;
	if( not $self->{is__loaded} ) {
		(my $URL,my $trelloKey,my $trelloToken) = @$self{qw(URL KEY TOKEN)};

		#https://trello.com/c/10O3euVS
		#https://trello.com/c/10O3euVS/4523-backlog-44?menu=filter&filter=atca
		$URL =~ /^https:\/\/trello\.com\/c\/([a-zA-Z0-9]{8})(\/.*)?$/;

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
sub _sendRequest {
	(my $self,my $method, my $url, my %rest ) = @_;

	if( !grep(/^$method$/,qw(GET POST DELETE PUT))  ) {
		die sprintf("unknown method \"%s\"",$method);
	}

	my %keys = %rest;
	@keys{qw(key token)} = @$self{qw(KEY TOKEN)};
	$url = "https://api.trello.com/1" . $url. "?" . (join("&",map {sprintf("%s=%s",$_,uri_escape($keys{$_}))} keys %keys)) ;
	print STDERR $url,"\n";
	my $req = HTTP::Request->new( $method => $url );
	my $lwp = LWP::UserAgent->new;
	my $res = $lwp->request( $req );
	if( $res->is_success ) {
		return from_json($res->{_content});
	} else {
		die "no success";
	}
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
			pos=>$$res{pos},
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
	printf(STDERR "sorting here\n");
	@checklists = sort { $a->{pos} <=> $b->{pos} } @checklists;
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
		@args{qw(KEY TOKEN)} = EHxzFeoHi::Trello::Base->GetTrelloPasswords($args{PASS_ID});
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
sub getUrl{
	(my $self) = @_;
	return $self->{URL};
}
sub toString {
	(my $self) = @_;
	my $res;
	print STDERR __FILE__,"\n";
	print STDERR $DIR,"\n";
    my $tt = Template->new(
        INCLUDE_PATH=>$DIR,
        INTERPOLATE=>1,
    );
    $tt->process("to_string.template.txt",{
			card=>$self,
        },
		\$res,
	) || die $tt->error(),"\n";
	print STDERR $self,"\n";
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
sub attach {
	(my $self,my %rest) = @_;
	(my $URL) = @$self{qw(URL)};
	$URL =~ /([0-9a-zA-Z]*)$/;
	my $code = $1;

	if( exists $rest{url} ) {
		my $res = $self->_sendRequest(POST=>sprintf("/cards/%s/attachments",$code),
			url=>$rest{url},
			);
		print to_json($res);
	} elsif( exists $rest{file} ) {
		my %keys;
		@keys{qw(key token)} = @$self{qw(KEY TOKEN)};
		my $url = sprintf("/cards/%s/attachments",$code);
		$url = "https://api.trello.com/1" . $url. "?" . (join("&",map {sprintf("%s=%s",$_,$keys{$_})} keys %keys)) ;

		print STDERR $url,"\n";
		print STDERR $rest{file},"\n";
		my $lwp = LWP::UserAgent->new;
		my $res = $lwp->post( $url, Content=>[file=>[$rest{file}]],Content_Type=>"form-data" );
		if( $res->is_success ) {
			print STDERR to_json(from_json($res->decoded_content)),"\n";
		} else {
			die "no success";
		}

	} else {
		...
	}
}
sub get_attachments {
	(my $self) = @_;
}

#main
1;
