use strict;
use warnings;
use Data::Dumper;

#global const's
my @MONTHS = (
  '',"Jan","Feb",
  "Mar","Apr","May",
  "Jun","Jul","Aug",
  "Sep","Oct","Nov",
  "Dec",
);
#procedures
sub heisei{
  return 1988+$_[0];
}
sub makeHref{
  return sprintf('<a href="%s">%s</a>',$_[0],$_[1]);
}
sub processData{
  (my $listRef) = @_;
  my @list = map {processDataSimple($_)} @$listRef;
  return \@list;
}
sub printLine{
  my $printline = shift;
  my @stack;
  while(scalar(@_)>0){
    my $var1 = shift;
    my $var2 = shift;
    push(@stack,makeHref($var1,$var2));
  }
  return sprintf($printline,@stack);
}
sub processDataSimple{
  if(defined $_[0]){
    my %list = %{$_[0]};
    my %res = %list;
    $res{year} = join("-",map {heisei($_)} @{$list{year}});
    $res{month} = join("-",map {$MONTHS[$_]} @{$list{month}});
    $res{description} = printLine(@{$list{description}});
    return \%res;
  } else {
    return {
      year=>"&nbsp;",
      month=>"",
      description=>"",
    };
  }
}
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

1;
