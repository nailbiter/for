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
use MongoDB;
require "$FindBin::Bin/code_analyzer.d/code_analyzer.aux1.pl";
require "$FindBin::Bin/code_analyzer.d/code_analyzer.aux2.pl";


#global const's
my $PID_FILE_NAME = "$FindBin::Bin/code_analyzer.d/.code_analyzer.pid.txt";
my $INITIAL_DIR = "/home/nailbiter/Dokumente/dreampirates/userApp/";
my $COMITTER_FIELD_NAME = "author";
my $GITSTAT = "$FindBin::Bin/code_analyzer.d/.gitstat.json";
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
sub GetTrieHash {
	(my $trie) = @_;
	return $trie->{_MAINHASHREF};
}
 
#main
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
#	printf("trie: %s\n",Dumper(\%ls));
#	my %ls = TrieLs(\@res,$trie,"src");
#	printf("trie: %s\n",Dumper(\%ls));

#	my $data = to_json(\%ls,{pretty=>1});
#	open my $fh, ">:utf8", $GITSTAT;
#	print $fh $data;
#	close $fh;
	my $mongoClient = MongoDB->connect();
	my $coll = $mongoClient->ns("admin.code_analyzer");
	$coll->update_one(
		{"repo_name"=>$INITIAL_DIR},
		{
			"\$set"=>{
				trie=>GetTrieHash($trie),
				data=>\@res,
			}
		},
		{upsert=>1},
	);
} elsif($ARGV[0] eq "help") {
	printf("%s\n",join("\n","server (default)", "kill", "help", "restart", "git"));
} elsif($ARGV[0] eq "kill") {
	system(sprintf("kill %d",path($PID_FILE_NAME)->slurp_utf8));
} elsif($ARGV[0] eq "restart") {
	system(sprintf("kill -HUP %d",path($PID_FILE_NAME)->slurp_utf8));
} else {
	# start the server on port 8080
	my $obj = MyWebServer->new(8080);
	$obj->setCurrentDir($INITIAL_DIR);
	$obj->setGitStat($GITSTAT);
	my $pid = $obj->background();
	print "Use 'kill $pid' to stop server.\n";
	open(my $fh, '>', $PID_FILE_NAME) or die $!;
	print $fh $pid;
	close($fh);
}
