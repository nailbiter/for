use strict;
use warnings;
use Template;

require 'generateAux.pl';
our @months;
our @education;
our @langs;
our @langExams;
our @progLangs;
our @work;

#global var's
my $tt = Template->new({
    INCLUDE_PATH => 'templates',
    }) || die "$Template::ERROR\n";

sub thickLine{
  return sprintf("border-%s-style:solid; border-%s-width:0.0529cm;border-%s-color:#000000;",$_[0],$_[0],$_[0]);
}
sub thinLine{
  return sprintf("border-%s-style:solid; border-%s-width:%fcm;border-%s-color:#000000;",$_[0],$_[0],0.0176,$_[0]);
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
my $vars = {
  PHONEPREFIX => "050",
  PHONESUFFIX => "5532 0335",
  DATEOFBIRTH => "Date of Birth",#生年月日
  PHONENUMBER => "Phone Number",#携帯電話番号
  TLB => "border-left-width:0.0529cm; border-left-style:solid; border-left-color:#000000;",#thick left black
  TRB => "border-right-width:0.0529cm; border-right-style:solid; border-right-color:#000000;",#thick left black
  tRB => "border-right-width:0.0176cm; border-right-style:solid; border-right-color:#000000;",#thin right black
  tBB => "border-bottom-style:solid; border-right-width:0.0176cm;border-bottom-color:#000000;",#thin bottom black
  TBB => "border-bottom-style:solid; border-bottom-width:0.0529cm;border-bottom-color:#000000;",#thick bottom black
  TTB => thickLine('top'),#thick top black
  tTB => thinLine('top'),#thin top black
  BIRTHDATE => 'December 24, 2018',
  CURRENTADDRESS => 'Address',#現住所
  NAME => 'Name',
  LASTUPDATE => 'Sep 6, 2018',
  YEAR => 'Year',
  MONTH => 'Month',
  EDUCATIONEMPLOYMENT => 'Education and Employment History', #学歴･職歴（各項目ごとにまとめて書く）
  EDUCATION => 'Education', #学歴
  EDUCATIONCONTENT => generateContent(\@education,'snip1.template.xhtml'),
  WORK => 'Work Experience',#職歴
  LANGSKILLS => 'Language Qualifications',#言語能力
  THEEND => 'End',#以上
  PROGLANGUAGES => 'Programming Languages/Framework Skills',#プログラミング言語
  PROGLANGUAGESCONTENT => generateContent(\@progLangs,'snip2.template.xhtml'),
  LANGUAGESKILLS => 'Language Skills',#習得した言語
  LANGUAGESKILLSCONTENT => generateContent(\@langs,'snip2.template.xhtml'),
  WORKCONTENT => generateContent(\@work,'snip1.template.xhtml'),
  LANGSKILLSCONTENT => generateContent(\@langExams,'snip1.template.xhtml'),
};
$tt->process('CV.template.xhtml', $vars)|| die $tt->error(), "\n";
