use strict;
use warnings;
use Data::Dumper;

#global const's
#procedures
sub makeHref{
  (my $target,my $text) = @_;
  $text //= $target;
  return sprintf('<a href="%s">%s</a>',$target,$text);
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
sub loadJsonFromFile{
	my $fn = shift;
	printf(STDERR "opening file %s\n",$fn);
	my $document;
	my $fh;
	if(open($fh,'<:encoding(UTF-8)', $fn)){
		$document = do { local $/; <$fh> };
	} else {
		$document ="{}";
	}
	printf(STDERR "doc: %s\n",$document);
	close($fh);
	return from_json($document);
}

1;
