use strict;
use warnings;
use Template;
use JSON;
use Getopt::Long;
require 'generateAux.pl';


#global const's
#global var's
my $tt = Template->new({
    INCLUDE_PATH => 'templates',
    }) || die "$Template::ERROR\n";
our @education;
our @work;
#procedures
sub loadJsonFromFile{
	my $fn = shift;
	printf(STDERR "opening file %s\n",$fn);
	my $document;
	my $fh;
	if(open($fh, $fn)){
		$document = do { local $/; <$fh> };
	} else {
		$document ="{}";
	}
	printf(STDERR "doc: %s\n",$document);
	close($fh);
	return from_json($document);
}
sub generateContent{
  my @res = ();
  my $templateName = $_[1];
  my @edu = @{$_[0]};
  for my $aref (@edu) {
    my @arr = @$aref;
    my $vars = {
      CONTENT => $aref,
    };
    # my $res;
    my $output = '';
    $tt->process($templateName, $vars, \$output)
    || die $tt->error(), "\n";
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
  my $res;
  if($_->{mode} eq "NONE"){
    $res = generateContent($dataJson->{$_->{key}},$_->{template});
  } elsif($_->{mode} eq "SIMPLE"){
    $res = generateContent(processData($dataJson->{$_->{key}}),$_->{template});
  }
  $vars->{$_->{varname}} = $res;
}
$tt->process($configJson->{TEMPLATENAME}, $vars)|| die $tt->error(), "\n";
