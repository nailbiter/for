use strict;
use warnings;
use Cwd qw(abs_path);
use File::Basename qw();
use Template;

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
  BIRTHDATE => 'December 24, 2018',
  CURRENTADDRESS => 'Address',#現住所
  NAME => 'Name',
};
my $tt = Template->new({
    INCLUDE_PATH => '.',
    #INTERPOLATE  => 1,
    }) || die "$Template::ERROR\n";
$tt->process('CV.template.xhtml', $vars)|| die $tt->error(), "\n";
