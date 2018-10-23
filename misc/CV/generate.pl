use strict;
use warnings;
use Template;
use JSON;
use Getopt::Long;
use Data::Dumper;
require 'generateAux.pl';


#global const's
my %DISPATCH = (
  NONE => sub {
    return $_[0];
  },
  SIMPLE => sub {
    return processData(@_);
  },
  SIMPLESPLIT => sub {
    my $listRef = $_[0];
    my @newData;
    for(@{$listRef}){
      my @split = map {[$_]} split(", *",$_->[0]);
      push(@newData,@split);
    }
    return \@newData;
  }
);
#global var's
my $tt = Template->new({
    INCLUDE_PATH => 'templates',
    }) || die "$Template::ERROR\n";
#procedures
sub generateContent{
  my @res = ();
  my $templateName = $_[1];
  for my $aref (@{$_[0]}) {
    my $vars = {
      CONTENT => $aref,
    };
    my $output = '';
    $tt->process($templateName, $vars, \$output) || die $tt->error(), "\n";
    push(@res,$output);
  }
  return join("\n",@res);
}

#main
my $jsonFileName; my $configName;
GetOptions(
	"jsonfilename=s" => \$jsonFileName,
  "config=s" => \$configName,
);
my $dataJson = loadJsonFromFile($jsonFileName);
my $configJson = loadJsonFromFile($configName);
my $vars = $configJson->{VARS};
for(@{$configJson->{DATA}}){
  $vars->{$_->{varname}} =
    generateContent($DISPATCH{$_->{mode}}->($dataJson->{$_->{key}}),$_->{template});
}
$tt->process($configJson->{TEMPLATENAME}, $vars)|| die $tt->error(), "\n";
