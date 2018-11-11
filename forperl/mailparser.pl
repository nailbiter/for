#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: mailparser.pl
#
#        USAGE: ./mailparser.pl -m <my> -k <Ks> -d 2018-09 [-f /Users/oleksiileontiev/Documents/emails/ -j ~/bin/emailconverter.jar]
#
#  DESCRIPTION: mail parser
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 10/12/18 19:25:54
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Getopt::Long;
use MongoDB;
use Mail::IMAPClient;
use IO::Socket::SSL;
use Encode;
use Encode::IMAPUTF7;
use MIME::Base64;
use Data::Dumper;
use MIME::Words qw/decode_mimewords/;
use Date::Parse;
use DateTime::Tiny;
use List::MoreUtils qw(first_index);
use DateTime;
use DateTime::TimeZone;
use Template;
use Text::Table;

binmode(STDOUT, ":utf8");
binmode(STDIN, ":utf8");
binmode(STDERR, ":utf8");

#global const's
my $HTMLNODETEMPLATE = <<'END_BLURB';
<html>
	<head>
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	</head>
	<body>
		<table border="1">
			<tbody>
				<tr>
					<th>
						subject
					</th>
					<td>
						[%flags.Subject.0%]
					</td>
				</tr>
				<tr>
					<th>
						pdf
					</th>
					<td>
						<a href="[%pdfpath%]">[%pdfpath%]</a>
					</td>
				</tr>
				<tr>
					<th>
						in reply to
					</th>
					<td>
						<a href="[%reply%]">[%reply%]</a>
					</td>
				</tr>
				<tr>
					<th>
						date
					</th>
					<td>
						[%flags.Date.0%]
					</td>
				</tr>
			</tbody>
		</table>
	</body>
</html>
END_BLURB
my @MONTHNAMES = (
	"Jan","Feb",
	"Mar","Apr","May",
	"Jun","Jul","Aug",
	"Sep","Oct","Nov",
	"Dec",
);
my @FOLDERDATA = (
	{
		name=>"INBOX",
		filter=> sub {
			(my $data,my $hash) = @_;
			my $kmail = $data->{kmail};
			my $res1 = grep(/$kmail/,@{$hash->{flags}->{From}});
			(my $ss,my $mm,my $hh,my $day,my $month,my $year,my $zone) = strptime($hash->{date});
			$year += 1900;
			return $res1 && ($month==$data->{month}) && ($year==$data->{year});
		},
		label => sub {
			(my $mailinfo) = @_;
			$mailinfo->{labels} = ["fromK"];
		},
	},
	{
		name => "1.Sent Messages",
		filter => sub {
			(my $data,my $hash) = @_;
			my $kmail = $data->{kmail};
			my $res1 = grep(/$kmail/,@{$hash->{flags}->{To}});
			(my $ss,my $mm,my $hh,my $day,my $month,my $year,my $zone) = strptime($hash->{date});
			$year += 1900;
			return $res1 && ($month==$data->{month}) && ($year==$data->{year});
		},
		label => sub {
			(my $mailinfo) = @_;
			$mailinfo->{labels} = ["toK"];
		},
	},
);
my %METHODS = (
	main => {
		callback => \&main,
		description => '',
	},
	findEmail => {
		description => 'find email by id',
		callback => \&findEmail,
		requiredArgs => ['id'],
	},
	help => {
		description=>"show this message",
		callback=>\&help,
	},
	test => {
		callback => \&test,
		description => "test (can change)",
	},
	tohtml => {
		callback => \&tohtml,
		description => "mails to html",
	}
);
#global var's
my $Testflag = 0;
my $TT = Template->new();
#procedures
sub myExec{
	(my $cmd) = @_;
	printf(STDERR "exec: _%s\n",$cmd);
	if(not $Testflag){
		system($cmd);
	}
}
sub connectToMailBox{
	(my $login, my $host,my $password) = @_;
	my $ssl=new IO::Socket::SSL("$host:imaps");
	die ("Error connecting - $@") unless defined $ssl;
	$ssl->autoflush(1);
	my $imap = Mail::IMAPClient->new(  
					Socket=>$ssl,
	#				Debug=>1,
					Server => $host,
					User    => $login,
					Password=> $password,
					Clear   => 5,   # Unnecessary since '5' is the default
	#               ...             # Other key=>value pairs go here
	)       or die "Cannot connect to $host as $login $@";
	printf(STDERR "connected: %s\n",$imap->Connected());
	printf(STDERR "authenticated %s\n",$imap->Authenticated());
	return $imap;
}
sub getEmailInfo{
	(my $imap,my $id) = @_;
	my %data;
	$data{date} = $imap->date( $id );
	my $hashref = $imap->parse_headers($id,'ALL');
	$data{flags} = $hashref;
	for(qw( From To Subject )){
		if(ref($data{flags}->{$_})){
			@{$data{flags}->{$_}} = map {decode('MIME-Header',$_);} @{$data{flags}->{$_}};
		} else {
			$data{flags}->{$_} = decode('MIME-Header',$data{flags}->{$_});
		}
	}
	return %data;
}
sub filterDataToDateLine{
	(my $filterDataRef) = @_;
#	for( $imap->since('01-Jul-2018') ) {
	my $res = sprintf("%02d-%s-%04d",01,$MONTHNAMES[$filterDataRef->{month}],$filterDataRef->{year});
	printf(STDERR "filterDataToDateLine: %s\n",$res);
	return $res;
}
sub saveEmailToFile{
	(my $dataRef,my $indexRef,my $folderName, my $jarPath, my $id,my $imap) = @_;
	myExec(sprintf("mkdir -p \"%s\"",$folderName));
	my %fileNames;
	for(("eml","pdf")){
		$fileNames{$_} = sprintf("%s%06d.%s",$folderName,$$indexRef,$_);
	}
	$imap->message_to_file($fileNames{eml},$id) 
		or die "Could not message_to_file: $@\n";
	myExec(sprintf("java -jar \"%s\" \"%s\"",$jarPath,$fileNames{eml}));
	unlink($fileNames{eml});
	$dataRef->{pdfpath} = $fileNames{pdf};
	${$indexRef}++;
}
sub parseDate{
	(my $dateString) = @_;
#			year   => 2006,
#			month  => 12,
#			day    => 25,
#			hour   => 10,
#			minute => 45,
#			second => 0,
	
#          'date' => 'Sun, 01 Jul 2018 11:48:41 +0900',
	if($dateString =~ /\w\w\w, (\d+) (\w\w\w) (\d\d\d\d) (\d\d):(\d\d):(\d\d) (\+\d+)/){
		my $dt = DateTime->new(
			day => ($1+0),
			month => ((first_index { $_ eq $2 } @MONTHNAMES )+1),
			year=>($3+0),
			hour => ($4+0),
			minute => ($5+0),
			second => ($6+0),
			time_zone=>$7,
		);
		$dt->set_time_zone('UTC');
		return (
			day => $dt->day,
			month => $dt->month,
			year => $dt->year,
			hour=> $dt->hour,
			minute=>$dt->minute,
			second=>$dt->second,
		);
	} else {
		die $dateString;
	}
}
sub processDate{
	(my $mailData) = @_;
	my $dateString = $mailData->{date};
	printf(STDERR "real date was %s\n",$dateString);
	$mailData->{date} = DateTime::Tiny->new(parseDate($dateString));
}
sub getMailBox{
	(my $myEmail, my $mongoClient) = @_;
	$mongoClient //= MongoDB->connect();
	my $mailPassword = $mongoClient->ns("admin.passwords")->find_one({key=>"MATHEMAIL"})->{value};
	my $imap = connectToMailBox($myEmail,"mail.ms.u-tokyo.ac.jp",$mailPassword);
	return $imap;
}
sub main{
	my %cmdLine = @_;
	my @months = split(' ',$cmdLine{month});
	my $mongoClient = MongoDB->connect();
	my $imap = getMailBox($cmdLine{myEmail},$mongoClient);
	printf(STDERR "cmdLine{myEmail}: %s\ncmdLine{kEmail}: %s\n",$cmdLine{myEmail},$cmdLine{kEmail});
	my $mongoCollection = $mongoClient->ns("admin.kmails");
	for(@months){
		my $month = $_;
		my %filterData = (kmail=>$cmdLine{kEmail});
		@filterData{"year","month"} = map {$_+0} split("-",$month);
		$filterData{month}--;
		printf(STDERR "year: %d, month: %d\n",@filterData{"year","month"});
		my $folderName = $cmdLine{folderName}.$month."/";

		my $i = 0;
		for(@FOLDERDATA){
			my %folderDataItem = %$_;
			printf("folder: %s\n",$folderDataItem{name});
			$imap->select($folderDataItem{name});
			my @mails = $imap->since(filterDataToDateLine(\%filterData));
			my $i = 1;
			for( @mails ) {
				printf( "%sprogress: %8s\t%12s\t%06d/%06d%s\n",
					'=' x 15,
					$month,
					$folderDataItem{name},
					$i++, scalar(@mails),
					'=' x 15,
				);
				my $id = $_;
				my %data = getEmailInfo($imap,$id);
				if($folderDataItem{filter}->(\%filterData,\%data))
				{
					processDate(\%data);
					$folderDataItem{label}->(\%data);
					printf(STDERR "\t%s\n",$data{flags}->{Subject});
					printf(STDERR "%s\n",Dumper(\%data));
					saveEmailToFile(\%data,\$i,$folderName.$folderDataItem{name}.'/',$cmdLine{jarPath},$id,$imap);
					printf(STDERR "going to insert %s\n",Dumper(\%data));
					$mongoCollection->insert_one(\%data) unless($Testflag);
				}
			}
		}
	}
}
sub test{
	my %cmdLine = @_;
	my $imap = getMailBox($cmdLine{myEmail});
	printf(STDERR "test\n");
	for(@FOLDERDATA){
		my %folderDataItem = %$_;
		printf(STDERR "folder: %s\n",$folderDataItem{name});
		$imap->select($folderDataItem{name});
		for($imap->search('ALL')){
			my $id = $_;
			printf("id=%s\n",$id);
			my %data;
			$data{date} = $imap->date( $id );
			$data{subject} = decode('MIME-Header',$imap->subject($id));
			my $headerRef = $imap->parse_headers($id,'ALL');

			my @headerKeys = ("From","To",
				"Message-id",'In-Reply-To','X-Universally-Unique-Identifier',
				'References',
			);
			my $hashref = $imap->parse_headers($id,@headerKeys);
			@data{@headerKeys} = @{$hashref}{@headerKeys};
			printf(STDERR "data: %s\n",Dumper(\%data));
			printf(STDERR "headerRef: %s\n",Dumper($headerRef));
			last;
		}
	}
}
sub tohtml{
	my %cmdLine = @_;
	my $folderName = $cmdLine{folderName}.'html/';
	my $idToFileName = sub {
		(my $id) = @_;
		return $folderName.($id =~ s/^<([^\@]+)\@ms\.u-tokyo\.ac\.jp>/$1/r ).'.html';
	};

	myExec(sprintf("mkdir -p %s",$folderName));
	printf(STDERR "%s\n",Dumper(\%cmdLine));
	my $mongoClient = MongoDB->connect();
	my $allMails = $mongoClient->ns("admin.kmails")->find();
	while(my $email = $allMails->next){
		printf(STDERR "%s\n",Dumper($email));
		my $fileName = $idToFileName->($email->{flags}->{'Message-Id'}->[0]);
		printf(STDERR "\nname: %s\n\n",$fileName);
		$email->{reply} = $idToFileName->($email->{flags}->{'In-Reply-To'}->[0]);
		$TT->process(\$HTMLNODETEMPLATE,$email,$fileName);
	}
}
sub help{
	my $tb = Text::Table->new(
		"method",\' | ',"description",\' | ','args'
	);
	$tb->add('-----','-------','--------');
	for(keys(%METHODS)){
		$METHODS{$_}->{requiredArgs} //= [];
		$tb->add($_,$METHODS{$_}->{description},join(', ',map {'--'.$_} @{$METHODS{$_}->{requiredArgs}}));
	}
	print $tb;
}
sub findEmail{
	my %cmdLine = @_;
	print "findEmail\n";
}

#main
my %cmdLine;
my %args;
for(qw( id )){
	$args{$_.'=s'} = \$cmdLine{$_};
}
my $method;
GetOptions(
	"myemail=s" => \$cmdLine{myEmail}, #my login name
	"kemail=s" => \$cmdLine{kEmail}, #K's login name
	"dateFilter=s" => \$cmdLine{month}, #e.g. 2018-07 means Jul 2018
	"folder=s" => \$cmdLine{folderName}, #folder to save .pdfs (with / at the end)
	"jar=s" => \$cmdLine{jarPath}, #path to emlconverter jar (see https://github.com/nickrussler/eml-to-pdf-converter)
	"testflag=i" => \$Testflag,
	"method=s" => \$method,
	%args,
);
$cmdLine{folderName} //= "/Users/oleksiileontiev/Documents/emails/";
$cmdLine{jarPath} //= "/Users/oleksiileontiev/bin/emailconverter.jar";
$cmdLine{kEmail} .= "\@ms.u-tokyo.ac.jp";
$method //= 'main';
$METHODS{$method}->{callback}->(%cmdLine);
