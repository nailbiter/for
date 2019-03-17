#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: converter.pl
#
#        USAGE: ./converter.pl  
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
#      CREATED: 03/11/19 03:47:08
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use FindBin;
use Data::Dumper;
use String::Random qw(random_regex random_string);
use Path::Tiny qw( path );
require "$FindBin::Bin/util.pl";


#global const's
my $TEXHEAD = <<'END_MESSAGE';
\documentclass{article}
\usepackage{xeCJK}
\setCJKmainfont[AutoFakeBold=true]{Hiragino Mincho Pro}
\usepackage{markdown}
\begin{document}
\begin{markdown}
END_MESSAGE
my $TEXTAIL = <<'END_MESSAGE';
\end{markdown}
\end{document}
END_MESSAGE
my %METHODS = (
	UPLOAD => {
		callback=>sub {
			my %env = %{$_[0]};
			(my $from, my $to) = @env{'FROM','TO'};
			MyExec(sprintf("scp %s %s\@%s:%s %s",
					$from,@env{'LOGIN','SERVER','REMOTEDIR'}),$env{TESTFLAG});
			MyExec(sprintf("touch %s",$to),$env{TESTFLAG});
		},
		description=>'upload given file',
	},
	MD2PDF => {
		callback=>sub {
			my %env = %{$_[0]};
			(my $from, my $to) = @env{'FROM','TO'};
			$env{TMPDIR} //= '/tmp';
			my $filenamebase = random_regex('[a-zA-Z]{10}');
			printf(STDERR "fn: %s\n",$filenamebase);
			open(my $fh, '>:encoding(UTF-8)',$env{TMPDIR}.'/'.$filenamebase . '.tex');
			printf($fh "%s%s%s",
				$TEXHEAD,
				path($from)->slurp_utf8,
				$TEXTAIL,
			);
			close($fh);
			MyExec(sprintf("xelatex --shell-escape %s",$filenamebase.'.tex'),
				$env{TESTFLAG},
				dir=>$env{TMPDIR},
			);
			MyExec(sprintf("cp -p %s/%s.pdf %s",$env{TMPDIR},$filenamebase,$to),
				$env{TESTFLAG},
			);
		},
		description=>'convert .md to .pdf',
	},
	MD2HTML => {
		callback=>sub {
			my %env = %{$_[0]};
			(my $from, my $to) = @env{'FROM','TO'};
			if(defined $env{HEAD}) {
				MyExec(sprintf("cat %s > %s",$env{HEAD},$to),$env{TESTFLAG});
				MyExec(sprintf("markdown %s >> %s",$from,$to),$env{TESTFLAG});
			} else {
				MyExec(sprintf("markdown %s > %s",$from,$to),$env{TESTFLAG});
			}
		},
		description=>'convert .md to .html',
	},
);
#global var's
my %Environment;
#procedures

#main
my @args;
for(qw( from to head login server remotedir tmpdir )) {
	push(@args, sprintf("%s=s",$_));
}
ParseCommandLine(\%Environment,@args);
Process(\%Environment,\%METHODS,@ARGV);
