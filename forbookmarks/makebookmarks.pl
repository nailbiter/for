#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: makebookmarks.pl
#
#        USAGE: ./makebookmarks.pl --date 11-30
#
#  DESCRIPTION: pull bookmarks
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (),
# ORGANIZATION:
#      VERSION: 1.0
#      CREATED: 10/10/18 14:09:21
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use LWP::UserAgent;
use Data::Dumper;
use Roman;
use File::Basename;
use Template;
use String::Random qw(random_regex random_string);
use JSON;
use Getopt::Long;
use FindBin;
use Path::Tiny qw( path );
use File::Slurp;

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");
binmode(STDERR, ":utf8");

#global const's
use constant JSONSTOREFILENAME => sprintf("/tmp/%s.json","IbPuSbZRToIMghbZNoRk");
my $RECTCOLOR = "white";
my $TESTFLAG = 0;
my %DICT = (
#	"Лк"=>["Лк","Luke","路加福音"],
#	"Ин"=>["Ин","John","約翰福音"],
#	"Мк"=>["Мк","Mark","馬可福音"],
#	"Еф"=>["Еф","Ephesians","以 弗 所 書"],
#	"Кол"=>["Кол","Colossians","歌羅西書"],
#	"Рим"=>["Рим","Romans","羅馬書"],
#	"1 Кор"=>["1 Кор","1 Corinthians","哥林多前書"],
#	"2 Кор"=>["2 Кор","2 Corinthians","哥林多後書"],
#	"1 Тим"=>["1 Тим","1 Timothy","提摩太前書"],
#	"2 Тим"=>["2 Тим","2 Timothy","提摩太後書"],
#	"Гал"=>["Гал","Galatians","加拉太書"],
#	"Мф"=>["Мф","Matthew","馬太福音"],
#	"Евр"=>["Евр","Hebrews","希伯來書"],
Lk=>["Лк","Luke","路加福音"],
	In=>["Ин","John","約翰福音"],
	Mk=>["Мк","Mark","馬可福音"],
	Ef=>["Еф","Ephesians","以 弗 所 書"],
	Kol=>["Кол","Colossians","歌羅西書"],
	Rim=>["Рим","Romans","羅馬書"],
	"1Kor"=>["1 Кор","1 Corinthians","哥林多前書"],
	"2Kor"=>["2 Кор","2 Corinthians","哥林多後書"],
	"1Tim"=>["1 Тим","1 Timothy","提摩太前書"],
	"2Tim"=>["2 Тим","2 Timothy","提摩太後書"],
	Gal=>["Гал","Galatians","加拉太書"],
	Mf=>["Мф","Matthew","馬太福音"],
	Evr=>["Евр","Hebrews","希伯來書"],
);
#global var's
my $JsonStore;
my $DateString;
my $CoordsRef;
my $RectCoordsRef;
my %Environment;
#procedures
BEGIN{
	require "$FindBin::Bin/../forperl/util.pl";
	$JsonStore = LoadJsonFromFile(JSONSTOREFILENAME);
	printf(STDERR "initial store:%s\n", Dumper($JsonStore));
}
END{
	printf(STDERR "final store:%s\n", Dumper($JsonStore));
	my $data = to_json($JsonStore,{pretty=>1});
	open my $fh, ">:utf8", JSONSTOREFILENAME;
	print $fh $data;
	close $fh;
}
sub parseLine{
	printf(STDERR "parseLine with %s\n",$_[0]);
	my %res;
	my $parseChapters = sub {
		my @startends;
		for(split(",",$_[0])){
			s/ //g;
			my @nums = split("-",$_);
			push(@startends,{
					start=>$nums[0]+0,
					end=>$nums[1]+0,
				});
		}
		return @startends;
	};
#	{
#		my $ll = $_[0];
#		my $lll = substr($ll, 3);
#		printf(STDERR "ll: \"%s\",\nlll: \"%s\"\n",$ll,$lll);
#		if($lll cmp 'Евр'){
#			printf(STDERR "true!\n");
#		} else {
#			printf(STDERR "false!\n");
#		}
#		if($lll =~ /[\p{Cyrillic}]+/){
#			printf(STDERR "true!\n");
#		} else {
#			printf(STDERR "false!\n");
#		}
#	}
	if($_[0] =~ /([12 a-zA-Z]+)\.,\s+(\d+)\s*zach\.,\s*([IVX]+),\s*(\d+)-(\d+)$/){
		%res = (engNameShort=>$1,zachalo=>($2+0),
			chapters=>[
				{
					chapterRomanStart=>$3,chapterRomanEnd=>$3,chapterStart=>($4+0),chapterEnd=>($5+0)
				},
			]);
		$res{engNameShort} =~ s/ //g;
	} elsif($_[0] =~ /([12 a-zA-Z]+)\.,\s+(\d+)\s*zach\.,\s*([IVX]+),\s*([-\s0-9,]+)$/) {
		%res = (engNameShort=>$1,zachalo=>($2+0));
		$res{chapters} = [];
		my @startends = $parseChapters->($4);
		for(@startends){
			push(@{$res{chapters}},{
					chapterRomanStart=>$3,
					chapterRomanEnd=>$3,
					chapterStart=>$_->{start}+0,
					chapterEnd=>$_->{end}+0,
				});
		}
	} elsif($_[0] =~ /([12 a-zA-Z]+)\.,\s+(\d+)\s*zach\.,\s*([-\s0-9XVI,;]+)$/) {
		#parseLine with Lk., 54 zach., X, 38-42; XI, 27-28
#   		Evr., 330 zach., XI, 33 - XII, 2
		%res = (engNameShort=>$1,zachalo=>($2+0));
		$res{chapters} = [];
		my $line = $3;
		for(split(";",$line)){
			if(/\s*([IVX]+),\s*([0-9]+)\s*-\s*([0-9]+)\s*/){
				push(@{$res{chapters}},{
						chapterRomanStart=>$1,
						chapterRomanEnd=>$1,
						chapterStart=>($2+0),
						chapterEnd=>($3+0),
					});
			}elsif(/\s*([IVX]+),\s*([0-9]+)\s*-\s*([IVX]+),\s*([0-9]+)\s*/){
				push(@{$res{chapters}},{
						chapterRomanStart=>$1,
						chapterRomanEnd=>$3,
						chapterStart=>($2+0),
						chapterEnd=>($4+0),
					});
			}else{
				die $_;
			}
		}
	} else {
		die $_[0];
	}

	$res{engNameShort} =~ s/ //g;
	return \%res;
}
sub makeRussian{
#	Лк., 83 зач.,\n XVI, 19–31.
	my %hash = @_;
	my @chapters = @{$hash{chapters}};
	my $res;
	my @chaptersProcessed;
	for(@chapters){
		my $item;
		if($_->{chapterRomanStart} eq $_->{chapterRomanEnd}){
			$item = sprintf("%s, %d-%d",
				$_->{chapterRomanStart},
				$_->{chapterStart},$_->{chapterEnd}
			);
		} else {
			$item = sprintf("%s, %d - %s, %d",
				$_->{chapterRomanStart},
				$_->{chapterStart},
				$_->{chapterRomanEnd},
				$_->{chapterEnd}
			);
		}
		push(@chaptersProcessed,$item);
	}
	if( not defined $DICT{$hash{engNameShort}}) {
		die sprintf("no value for %s in DICT",$hash{engNameShort});
	}
	$res = sprintf("%s., %d зач.,\n%s.\n",
		$DICT{$hash{engNameShort}}->[0],
		$hash{zachalo},
		join(",\n",@chaptersProcessed)
	);
	#FIXME: this is potentially buggy
#	if(@chapters == grep { $_->{chapterRoman} eq $chapters[0]->{chapterRoman} } @chapters){
#		if($chapters[0]->{chapterRomanStart} eq $chapters[0]->{chapterRomanEnd}){
#			my $chapterRoman = $chapters[0]->{chapterRomanStart};
#			@chapters = map {
#					 sprintf("%d-%d",$_->{chapterStart},$_->{chapterEnd});
#				} @chapters ;
#			$res =
#				sprintf("%s., %d зач.,\n%s, %s.\n",
#					$DICT{$hash{engNameShort}}->[0],
#					$hash{zachalo},$chapterRoman,
#					join(",\n",@chapters)
#			);
#		} else {
#
#		}
#	} else {
#		@chapters = map {
#				if($_->{chapterRomanStart} eq $_->{chapterRomanEnd}){
#					sprintf("%s, %d-%d",$_->{chapterRomanStart},$_->{chapterStart},$_->{chapterEnd});
#				} else {
#					sprintf("%s, %d - %s, %d",$_->{chapterRomanStart},$_->{chapterStart},
#						$_->{chapterRomanEnd},$_->{chapterEnd});
#				}
#			} @chapters ;
#		$res =
#			sprintf("%s., %d зач.,\n%s.\n",
#				$DICT{$hash{engNameShort}}->[0],
#				$hash{zachalo},
#				join(",\n",@chapters)
#		);
#	}
	printf(STDERR "makeRussian returns \"%s\"",$res);
	return $res;
}
sub makeEnglish{
	my %hash = @_;
	my @chapters = @{$hash{chapters}};
	if( not defined $DICT{$hash{engNameShort}}) {
		die sprintf("no value for %s in DICT",$hash{engNameShort});
	}
	my $res  =sprintf("%s,\n%s.",$DICT{$hash{engNameShort}}->[1],
		join(",\n",map {
				sprintf("%d:%d--%d:%d",
					arabic($_->{chapterRomanStart}),$_->{chapterStart},
					arabic($_->{chapterRomanEnd}),$_->{chapterEnd});
			} @chapters)
	);
	printf(STDERR "makeEnglish returns \"%s\"",$res);
	return $res;
}
sub makeChinese{
	my %hash = @_;
	my @chapters = @{$hash{chapters}};
	if( not defined $DICT{$hash{engNameShort}}) {
		die sprintf("no value for %s in DICT",$hash{engNameShort});
	}
	my $res  =sprintf("%s,\n%s.",$DICT{$hash{engNameShort}}->[2],
		join(",\n",map {
				sprintf("%d:%d--%d:%d",
					arabic($_->{chapterRomanStart}),$_->{chapterStart},
					arabic($_->{chapterRomanEnd}),$_->{chapterEnd});
			} @chapters)
	);
	printf(STDERR "makeChinese returns \"%s\"",$res);
	return $res;
}
sub pasteText{
	(my $pdfName, my $y, my $x, my $text) = @_;
	chomp($text);
	$text =~ s/\n/\\n/g;
	MyExec(sprintf("cpdf -prerotate -utf8 -add-text \"%s\" -pos-left \"%d %d\" \"%s\" -o \"%s\"",
		$text,
		$x, $y,
		$pdfName,$pdfName));
}
sub pastePdf{
	(my $pdfName,my $logoName, my $x, my $y) = @_;
	MyExec(sprintf("cpdf -prerotate -stamp-on %s -pos-left \"%d %d\" \"%s\" -o \"%s\"",
		$logoName,
		$x,$y,
		$pdfName,$pdfName));
}
sub textToPdf{
	my $TT = Template->new(INCLUDE_PATH=>'templates');
	(my $text) = @_;
	chomp($text);
	$text =~ s/\n/\\\\\n/g;
	my %pdfName = (base=>sprintf("/tmp/%s",random_regex('\w' x 10)));
	$pdfName{tex} = $pdfName{base}.".tex";
	my $output;
	open(my $fh, '>', $pdfName{tex}) or die "Could not open file '$pdfName{tex}' $!";
	$TT->process("bookmark.template.tex",{text=>$text},\$output);
	printf($fh "%s\n",$output);
	MyExec(sprintf("xelatex -output-directory /tmp %s",$pdfName{tex}));
	return $pdfName{base}.".pdf";
}
sub pasteRect{
	(my $pdfName, my $x, my $y, my $height, my $width) = @_;
	MyExec(sprintf("cpdf -prerotate -add-rectangle \"%d %d\" -pos-left \"%d %d\" -color %s \"%s\" -o \"%s\"",
			$height,$width,
			$x,$y,
			$RECTCOLOR,
		$pdfName,$pdfName));
}
sub processFile{
	(my $originalPdfName,my $key,my $actsRef, my $evangelieRef) = @_;
	my $path = dirname($originalPdfName);
	print($originalPdfName."\n");
	my $newPdfName = sprintf("%s/bookmark_%s.pdf",$path,$key);
	print($newPdfName."\n");
	MyExec(sprintf("cp \"%s\" \"%s\"",$originalPdfName,$newPdfName));
	printf(STDERR "acts: %s\nevan: %s\n",Dumper($actsRef),Dumper($evangelieRef));

	for(@{$RectCoordsRef}){
		pasteRect($newPdfName,@$_);
	}

	my %funcs = (rus=>\&makeRussian, eng=>\&makeEnglish, chi=>\&makeChinese,);
	for(qw( rus chi eng )){
		my $rotation = "-90";
		if(!(exists $JsonStore->{decoratedKey($_."_evangelie")})){
			$JsonStore->{decoratedKey($_."_evangelie")} //= textToPdf($funcs{$_}->(%$evangelieRef));
			prerotatePdf($JsonStore->{decoratedKey($_."_evangelie")},$rotation);
		}
		if(!(exists $JsonStore->{decoratedKey($_."_acts")})){
			$JsonStore->{decoratedKey($_."_acts")} //= textToPdf($funcs{$_}->(%$actsRef));
			prerotatePdf($JsonStore->{decoratedKey($_."_acts")},$rotation);
		}
	}

	printf(STDERR "CoordsRef: %s",Dumper($CoordsRef));
	my $pasteTexts = sub{
		(my $suff,my $displacementX, my $displacementY) = @_;
		if(scalar(@$CoordsRef)>0){
			my $pdfPositions = $CoordsRef->[0];
			for(("rus","chi","eng")){
				my @args = ($newPdfName,$JsonStore->{decoratedKey($_."_".$suff)},
					$pdfPositions->{$suff}->{$_}->[1]+$displacementY,
					$pdfPositions->{$suff}->{$_}->[0]+$displacementX);
				printf(STDERR "pastePdf(%s)\n",Dumper(\@args));
				pastePdf(@args);
			}
		}
	};
	my $pasteTextsGroup = sub {
		(my $displacementX,my $displacementY) = @_;
		if(scalar(@$CoordsRef)>1){
			my $coords = $CoordsRef->[1];
			for(keys(%$coords)){
				my $key = $_;
				for(@{$coords->{$key}}){
					$pasteTexts->($key,
						$_->[0]+$displacementX,
						$_->[1]+$displacementY);
				}
			}
		}
	};

	for(@{$CoordsRef->[2]}){
		$pasteTextsGroup->($_->[0],$_->[1]);
	}
	printf(STDERR "created %s\n",$newPdfName);
}
sub prerotatePdf{
	(my $pdfName, my $rotation) = @_;
	MyExec(sprintf("cpdf -rotate-contents %s %s -o %s",$rotation, $pdfName, $pdfName));
}
sub getActsEvangelieLines{
	my $acts; my $evangelie;
	(my $date) = @_;
	my $url = sprintf("http://www.patriarchia.ru/bu/%s/",$date);

	printf(STDERR "dateline: %s\n",$date);
	my $outfile = sprintf("%s/bu.html",$Environment{TMPDIR});
	MyExec(sprintf("links -dump %s > %s",$url,$outfile),$Environment{TESTFLAG});
#	my $sPage = path($outfile)->slurp_utf8;
	my $sPage = read_file($outfile);

	printf(STDERR "%s\n\n-----------------------------\n---------------------------\n",$sPage);

	for($sPage){
		s/\([^)]+\)//g;
		s/\. +,/\.,/g;
	}
	printf(STDERR "%s\n\n-----------------------------\n---------------------------\n",$sPage);
	for($sPage){
		s/\n//g;
		if(/Lit\. - (.*?)\.[^,](.*?)\.[^,]/){
			$acts = $1;
			$evangelie = $2;
		}
		else{
			die $date;
		}
	}
	printf(STDERR "evangelie: %s\n",$evangelie);
	printf(STDERR "acts: %s\n",$acts);
	return ($acts,$evangelie);
}
sub decoratedKey{
	my @res;
	for(@_){
		push(@res,sprintf("%s.%s",$DateString,$_));
	}
	if($#res==0){
		return $res[0];
	} else {
		return @res;
	}
}

#main
my $coordsFile= "makebookmarksCoords.json";
my $originalFile = "test.pdf";
$Environment{TMPDIR} = 'tmp';
GetOptions(
	"date=s" => \$DateString,
	"coords=s" => \$coordsFile,
	"original=s" => \$originalFile,
	"tmpdir=s" => \$Environment{TMPDIR},
);
my @fileparse = fileparse($originalFile,qr/\.[^.]*/);
my $cr = LoadJsonFromFile($coordsFile);
$CoordsRef = $cr->{$DateString};
$RectCoordsRef = $cr->{"rectcoords.".$fileparse[0]};
if(!(exists($$JsonStore{decoratedKey("acts")}) and exists($$JsonStore{decoratedKey("evangelie")}))) {
	@{$JsonStore}{decoratedKey("acts","evangelie")} = getActsEvangelieLines($DateString);
}
my %refs;
for(("acts","evangelie")){
	$refs{$_} = parseLine($JsonStore->{decoratedKey($_)});
	print STDERR Dumper($refs{$_});
}
processFile($originalFile,
	$DateString,$refs{acts},$refs{evangelie});
