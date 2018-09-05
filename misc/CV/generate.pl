use strict;
use warnings;
use Cwd qw(abs_path);
use File::Basename qw();
use Template;

my $vars = {
  PHONEPREFIX => "050",
  PHONESUFFIX => "5532 0335"
};
my $tt = Template->new({
    INCLUDE_PATH => '.',
    #INTERPOLATE  => 1,
    }) || die "$Template::ERROR\n";
$tt->process('CV.template.xhtml', $vars)|| die $tt->error(), "\n";
