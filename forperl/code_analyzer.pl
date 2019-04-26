#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: code_analyzer.pl
#
#        USAGE: ./code_analyzer.pl  
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
#      CREATED: 2019年04月26日 16時51分53秒
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use FindBin;
use Path::Tiny qw( path );
use Git::Repository 'Blame';
use Data::Dumper;
use Git::Repository::Plugin::Blame::Line;
use Tree::Trie;
use JSON;
require "$FindBin::Bin/code_analyzer.aux.pl";


#global const's
my $PID_FILE_NAME = ".code_analyzer.pid.txt";
my $INITIAL_DIR = "/home/nailbiter/Dokumente/dreampirates/userApp/";
my $GITSTAT = ".gitstat.json";
{
	package MyWebServer;
	 
	use HTTP::Server::Simple::CGI;
	use base qw(HTTP::Server::Simple::CGI);
	 
	my %dispatch = (
		'/hello' => \&resp_hello,
	);
	 
	sub handle_request {
		my $self = shift;
		my $cgi  = shift;
	   
		my $path = $cgi->path_info();
		my $handler = $dispatch{$path};
	 
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
	 
} 
my $COMITTER_FIELD_NAME = "author";
#global var's
#procedures
sub ComputeFileStat{
	(my $git, my $fn) = @_;
#	my $output = $git->run();
	my $lines = $git->blame($fn);
	my %res;
	for(@{$lines}) {
		my %attr = %{$_->get_commit_attributes()};
#		push @res, \%attr;
		my $author = $attr{$COMITTER_FIELD_NAME};
		$res{$author} //= 0;
		$res{$author}++;
	}
	return (
		LABEL=>$fn,
		STAT=>\%res,
	);
}
sub TrieLs{
	(my $stat,my $trie, my @path) = @_;
	my %end = (''=>undef);
	my $mhash = $trie->{_MAINHASHREF};
	for(@path) {
		$mhash = $mhash->{$_};
	}
	my %res;
	for(keys %{$mhash}) {
		my %val = %{$mhash->{$_}};
		$res{$_} = {
			IS_DIR => not (Dumper(\%end) eq Dumper(\%val)),
			STAT => ComputeStat($stat,join("/",@path,$_)),
		};
	}
	return %res;
}
sub ComputeStat {
	(my $stat, my $pref) = @_;
	my %res;
	for(@{$stat}) {
		if( $_->{LABEL} =~ /^$pref/ ) {
			my %s = %{$_->{STAT}};
			for my $key (keys %s) {
				$res{$key} //= 0;
				$res{$key} += $s{$key};
			}
		}
	}
	return \%res;
}
 
if($ARGV[0] eq "git") {
	my $r = Git::Repository->new( work_tree => $INITIAL_DIR );
	my $output = $r->run("ls-files");
	my @files = split("\n",$output);
	printf("out: %s\n",Dumper(\@files));
	my @res;
	for my $fn (@files) {
		my %hashres = ComputeFileStat($r,$fn);
		push @res, \%hashres;
	}
	printf("stat: %s\n",Dumper(\@res));
	my $trie = new Tree::Trie;
	for(@res) {
		my @names = split("/",$_->{LABEL});
		$trie->add(\@names);
	}
	my %ls = TrieLs(\@res,$trie);
	printf("trie: %s\n",Dumper(\%ls));
#	my %ls = TrieLs(\@res,$trie,"src");
#	printf("trie: %s\n",Dumper(\%ls));

	my $data = to_json(\%ls,{pretty=>1});
	open my $fh, ">:utf8", $GITSTAT;
	print $fh $data;
	close $fh;
} elsif($ARGV[0] eq "restart") {
	system(sprintf("kill -HUP %d",path($PID_FILE_NAME)->slurp_utf8));
} else {
	# start the server on port 8080
	my $obj = MyWebServer->new(8080);
	$obj->setCurrentDir($INITIAL_DIR);
	my $pid = $obj->background();
	print "Use 'kill $pid' to stop server.\n";
	open(my $fh, '>', $PID_FILE_NAME) or die $!;
	print $fh $pid;
	close($fh);
}
