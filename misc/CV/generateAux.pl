use strict;
use warnings;
use Data::Dumper;

#const's
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
sub processDataSimple{
  if(defined $_[0]){
    my @list = @{$_[0]};
    my @res;
    push @res, join("-",map {heisei($_)} @{shift(@list)});
    push @res, join("-",map {$MONTHS[$_]} @{shift(@list)});
    my $printline = shift(@list);
    my @stack;
    while(scalar(@list)>0){
      my $var1 = shift(@list);
      my $var2 = shift(@list);
      push(@stack,makeHref($var1,$var2));
    }
    push @res, sprintf($printline,@stack);
    return \@res;
  } else {
    return ["&nbsp;"," "," "];
  }
}

1;
