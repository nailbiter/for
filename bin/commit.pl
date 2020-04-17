#!/usr/bin/perl

#global var's
my $TESTMODE = 0;
my $filesChanged =`git status -s --untracked-files=no`;
my $trelloMsg="";

#main
if(!$ARGV[0]){
	print "dYvTXBzVpz\n" if $TESTMODE;
	my $filename = "trello.txt";
	open my $fh, '<', $filename or die "error opening $filename: $!";
	my $data = do { local $/; <$fh> };
	$trelloMsg = sprintf("https://trello.com/c/%s",$data);
}elsif($ARGV[0]=~m/^https:/){
	print "RSauQpiWVA\n" if $TESTMODE;
	$trelloMsg = $ARGV[0];
}else{
	print "kgDMdUyaIJ\n" if $TESTMODE;
	printf("argv[0]=\"%s\"\n",$ARGV[0]);
	$trelloMsg = sprintf("https://trello.com/c/%s",$ARGV[0]);
}
my $command = sprintf("git commit -a -m \"%s\"",
    sprintf("trello card: %s\nfiles changed:\n%s",$trelloMsg,$filesChanged));
if($TESTMODE){
	print $command;
	exit;
}else{
	system($command);
}
