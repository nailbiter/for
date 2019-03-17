#!/usr/bin/env perl 

use strict;
use warnings;
use utf8;
use Template;
use JSON;
use Getopt::Long;
use Data::Dumper;
use FindBin;
require "$FindBin::Bin/generateAux.pl";
binmode STDOUT, ':utf8';


#global const's
my %DISPATCH = (
  NONE => sub {
    (my $listRef,my $ext) = @_;
    if(!(defined $ext)){
      return $_[0];
    } elsif($ext eq "split") {
      my @newData;
      for(@{$listRef}){
        push(@newData,map {[$_]} split(", *",$_->[0]));
      }
      return \@newData;
    } elsif($ext eq "publications") {
      #TODO
      # Title, name, dates, link, etc.
      my @res;
      for(@{$listRef}){
        for($_->{Date}){
          # 2015年1月26日
          s/年/\//;
          s/月/\//;
          s/日//;
          my @dates = split("/",$_);
          # printf(STDERR "%s in loop\n",Dumper(\@dates));
          $_ = sprintf("%s %s %s",$dates[2],months($dates[1]+0),$dates[0]);
        }
        push @res, [sprintf("<em>%s</em>, Alex Leontiev and %s, %s, available online at %s",
          $_->{Title},$_->{"Co-author(s)"},$_->{Date},makeHref($_->{Link}))];
      }
      # printf(STDERR "res was %s",Dumper(\@res));
      return \@res;
    }
  },
  SIMPLE => sub {
    return processData(@_);
  },
  EDUCATION => sub {
    (my $listRef,my $ext) = @_;
    my @list = @$listRef;
    if($ext eq "FILTER"){
        @list = grep {$_->{type} eq "GRADUATION"} @list;
    }
    @list = grep {defined $_} @list;
    @list = @{processData(\@list)};
    my $mapfunc = sub {
      (my $yearline,my $monthline) = @_;
      my @years = split("-",$yearline);
      my @months = split("-",$monthline);
      if(scalar(@months)>scalar(@years)){
        $years[1] = $years[0];
      }

      my @dates;
      while(my( $index, $value ) = each @years){
        push(@dates,sprintf("%s %s",$months[$index],$value));
      }
      return join("-",@dates);
    };
    @list = map {{
      uniname=>($_->{description}),
      %{$_},
      dateline=>($mapfunc->($_->{year},$_->{month})),
    }} @list;
    for(@list){
      unless(defined $_->{degreename}){
        if($_->{description} =~ /(.*)? at /){
          $_->{degreename} = $1;
        }
      }
    }
    @list = reverse(@list);
    return \@list;
  },
);
#global var's
my $tt = Template->new({
    INCLUDE_PATH => 'templates',
	ENCODING     => 'utf8',
    }) || die "$Template::ERROR\n";
#procedures
sub generateContent{
  my @res = ();
  my $templateName = $_[1];
  for(@{$_[0]}) {
    my $vars = {
      CONTENT => $_,
    };
    my $output = '';
    $tt->process($templateName, $vars, \$output) || die $tt->error(), "\n";
    push(@res,$output);
  }
  return join("\n",@res);
}

#main
my $jsonFileName; my $configName;
my @plugins;
GetOptions(
	"jsonfilename=s" => \$jsonFileName,
  "config=s" => \$configName,
  "plugin=s@" => \@plugins,
);
for(@plugins) {
	printf(STDERR "plugin: %s\n",$_);
	require "$_";
}
my $dataJson = loadJsonFromFile($jsonFileName);
my $configJson = loadJsonFromFile($configName);
my $vars = $configJson->{VARS};
for(@{$configJson->{DATA}}){
  $vars->{$_->{varname}} =
    generateContent($DISPATCH{$_->{mode}}->($dataJson->{$_->{key}},$_->{modeext}),$_->{template});
}
$vars->{PROFESSIONALPROFILE} = $dataJson->{profProfile};
$tt->process($configJson->{TEMPLATENAME}, $vars)|| die $tt->error(), "\n";
