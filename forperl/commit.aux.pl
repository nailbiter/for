use strict;
use warnings;
use utf8;
use autodie;
use Text::TabularDisplay;
use MongoDB;
use Getopt::Long;

#global const's
our %METHODS;
#global var's
our %Environment;
#procedures
sub getTrelloPasswords{
	my $client = MongoDB->connect();
	my $secret = $client->ns("admin.passwords");
	my $key = $secret->find_one({key=>'TRELLOKEY'})->{'value'};
	printf(STDERR "key: %s\n",$key) if $Environment{TESTFLAG};
	my $token = $secret->find_one({key=>'TRELLOTOKEN'})->{'value'};
	printf(STDERR "token: %s\n",$token) if $Environment{TESTFLAG};
	return ($key,$token);
}
sub printHelp {
	my %cmdline = @_;
	my $t = Text::TabularDisplay->new(qw(method description));
	for(keys(%METHODS)){
		my $description = $METHODS{$_}->{description};
		$description //= lc($_);
		$t->add($_,$description);
	}
	printf("%s\n",$t->render);
}
sub myExec{
	(my $cmd, my %aux) = @_;
	if(defined $aux{dir}){
		$cmd = sprintf("cd %s && %s",$aux{dir},$cmd);
	}
	printf(STDERR "exec: _%s\n",$cmd);
	if(not $Environment{TESTFLAG}){
		system($cmd);
	}
}
sub GetUrlFromConfigfile{
	(my $json) = @_;
	if($$json{cardurl} =~ /https:\/\/trello\.com\/c\/[a-zA-Z0-9]{8}/){
		return $$json{cardurl};
	} elsif( defined $$json{urlnames} ){
		return $json->{urlnames}->{$$json{cardurl}};
	} else {
		die sprintf("cannot get %s",$$json{cardurl});
	}
}
sub WriteData{
	(my $json,my $filename) = @_;
	my %jsonToWrite = %$json;
	for(qw( TITLE TESTFLAG )) {
		delete $jsonToWrite{$_};
	}
	open my $fh, '>', $filename;
	my $data = to_json(\%jsonToWrite,{pretty=>1});
	print $fh $data;
	close($fh);
	printf(STDERR "written to %s\n",$filename);
}
sub ParseCommandLine{
	(my $cmdline, my @arguments) = @_;
	my %args;
	for(@arguments){
		my $fullkey = $_;
		(my $key) = split('=',$fullkey);
		$key = uc($key);
		$args{$fullkey} = \$$cmdline{$key};
	}
	GetOptions(
		%args,
	);
}
sub GetTrelloCard{
	(my $URL,my $trelloKey,my $trelloToken) = @_;
	$URL =~ /([0-9a-zA-Z]*)$/;
	my $code = $1;
	my $url = sprintf("https://api.trello.com/1/cards/%s?key=%s&token=%s",$code,$trelloKey,$trelloToken);
	printf("code: %s\nurl: %s\n",$code,$url);
	my $req = HTTP::Request->new( GET=> $url );
	my $lwp = LWP::UserAgent->new;
	my $res = $lwp->request( $req );
	return ($req,$lwp,$res);
}
sub GetTrelloCardTitle {
	(my $URL,my $trelloKey,my $trelloToken,my $callback) = @_;
	my %args;
	@args{"url","trelloKey","trelloToken"} = ($URL, $trelloKey, $trelloToken);
	(my $req, my $lwp, my $res) = GetTrelloCard(@args{"url","trelloKey","trelloToken"});
	if($res->is_success){
		$res = parse_json($lwp->request( $req )->{_content});
		return $res->{name};
	} else {
		return $callback->();
	}
}
sub doCommit{
	(my $trelloUrl, my $trelloTitle, my $dir) = @_;
	printf(STDERR "trello card url: %s\n",$trelloUrl);
	my $pref = '';
	if( defined $dir ){
		$pref = sprintf("cd %s &&",$dir);
	}

	my $filesChanged =`$pref git status -s --untracked-files=no`;
	if( length($filesChanged) ) {
		my $commitMsg = sprintf("%s\nfiles changed:\n%s\ntrello card: %s",$trelloTitle,$filesChanged,$trelloUrl);
		my $command = sprintf("git commit -a -m \"%s\"",$commitMsg);
		myExec($command,(dir=>$dir));
	}
}

#main
1;
