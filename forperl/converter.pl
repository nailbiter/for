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
use Template;
use File::Basename;
require "$FindBin::Bin/util.pl";
require "$FindBin::Bin/converter.aux.pl";


#global const's
my %TEMPLATES;
$TEMPLATES{MD2PDF} = <<'END_MESSAGE';
\documentclass{article}
%\usepackage{xeCJK}
%\setCJKmainfont[AutoFakeBold=true]{[% XELATEXFONT %]}
\usepackage{luatexja-fontspec}
\setmainjfont{[% XELATEXFONT %]}
\usepackage[contentBlocks]{markdown}
\begin{document}
\begin{markdown}
[% BODY %]
\end{markdown}
\end{document}
END_MESSAGE
my %METHODS = (
	TEMPLATEINSERT => {
		keys => ['data','start','end',],
		callback=>sub {
			my %env = %{$_[0]};
			(my $from, my $to, my $datalist) = @env{'FROM','TO','DATA'};
			my %dat;
			for my $data (@$datalist) {
				if($data =~ /\.csv$/) {
					my %res = LoadSimpleCsv($data,
					);
					my %p;
					@p{'base','dir','ext'} = fileparse($data, qr/\.[^.]*/);
					$dat{uc($p{base})} = \%res;
				} elsif ($data =~ /\.json$/) {
					my $json = LoadJsonFromFile($data);
					for(keys %$json) {
						$dat{uc($_)} = $json->{$_};
					}
				}
			}

			my %p;
			@p{'base','dir','ext'} = fileparse($from, qr/\.[^.]*/);
			my $tt = Template->new({
				INCLUDE_PATH => $p{dir},
				}) || die "$Template::ERROR\n";
			printf(STDERR "%s\n",Dumper(\%dat));

			my $res = '';
			$tt->process($p{base}.$p{ext}, \%dat, \$res) 
				|| die $tt->error(), "\n";
			my $content = path($to)->slurp_utf8;
			my @contentLines = split("\n",$content);

			my $start,my $end;
			for my $i (0..$#contentLines) {
				if( $contentLines[$i] =~ /^$env{START}/ ) {
					$start = $i;
					printf("start: %d\n",$i);
				} elsif( $contentLines[$i] =~ /^$env{END}/ ) {
					$end = $i;
					printf("end: %d\n",$i);
				}
			}

			open(my $fh, '>:utf8', $to);
			print $fh join("\n",@contentLines[0..$start]);
			print $fh $res;
			print $fh join("\n",@contentLines[$end..$#contentLines]);
			close($fh);
		},
		description=>'process template using --data',
	},
	TEMPLATE => {
		keys => ['data',],
		callback=>sub {
			my %env = %{$_[0]};
			(my $from, my $to,my $datalist) = @env{'FROM','TO','DATA'};
			my %dat;
			for my $data (@$datalist) {
				if($data =~ /\.csv$/) {
					my %res = LoadSimpleCsv($data,
					);
					my %p;
					@p{'base','dir','ext'} = fileparse($data, qr/\.[^.]*/);
					$dat{uc($p{base})} = \%res;
				} elsif ($data =~ /\.json$/) {
					my $json = LoadJsonFromFile($data);
					for(keys %$json) {
						$dat{uc($_)} = $json->{$_};
					}
				} elsif ($data =~ /\.pl$/) {
					printf(STDERR "going to load perl: %s\n",$data);
					require "$data";
					my %p;
					@p{'base','dir','ext'} = fileparse($data, qr/\.[^.]*/);
					my $exp = export();
#					printf(STDERR "assign %s to %s\n",Dumper($exp),$p{base});
					%dat = (%dat,%$exp);
				}
			}

			my %p;
			@p{'base','dir','ext'} = fileparse($from, qr/\.[^.]*/);
			my $tt = Template->new({
				INCLUDE_PATH => $p{dir},
				}) || die "$Template::ERROR\n";
			printf(STDERR "%s\n",Dumper(\%dat));
			$tt->process($p{base}.$p{ext}, \%dat, $to) 
				|| die $tt->error(), "\n";
		},
		description=>'process template using --data',
	},
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
		keys => ['[carry]','tmpdir','font',],
		callback=>sub {
			my %env = %{$_[0]};
			(my $from, my $to) = @env{'FROM','TO'};
			$env{TMPDIR} //= '/tmp';
			my $tt = Template->new();
			my $filenamebase = random_regex('[a-zA-Z]{10}');
			printf(STDERR "fn: %s\n",$filenamebase);
			if( defined $env{CARRY} ) {
				for(@{$env{CARRY}}) {
					MyExec(sprintf("cp %s %s",$_,$env{TMPDIR}),
						$env{TESTFLAG}
					);
				}
			}
			$tt->process(\$TEMPLATES{MD2PDF},{XELATEXFONT=>$env{FONT}, BODY=>(path($from)->slurp_utf8)},$env{TMPDIR}.'/'.$filenamebase . '.tex');
			MyExec(sprintf("lualatex --shell-escape %s",$filenamebase.'.tex'),
				$env{TESTFLAG},
				dir=>$env{TMPDIR},
			);
			MyExec(sprintf("cp -p %s/%s.pdf %s",$env{TMPDIR},$filenamebase,$to),
				$env{TESTFLAG},
			);
		},
		description=>'convert .md to .pdf',
	},
	XELATEX => {
		callback=>sub {
			my %env = %{$_[0]};
			(my $from, my $to) = @env{'FROM','TO'};
			MyExec(sprintf("latexmk -pdf -outdir=%s -pdflatex='xelatex %%O %%S' -f -g %s",
					$env{OUTDIR},
					$from,
				),
				$env{TESTFLAG});
		},
		description=>'xelatex',
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
for(qw( from outdir to head login server remotedir tmpdir font start end )) {
	push(@args, sprintf("%s=s",$_));
}
ParseCommandLine(\%Environment,
	@args,
	"carry=s@",
	"data=s@",
);
Process(env=>\%Environment,methods=>\%METHODS,argv=>\@ARGV);
