#!/usr/bin/env perl 

sub thickLine{
  return sprintf("border-%s-style:solid; border-%s-width:0.0529cm;border-%s-color:#000000;",$_[0],$_[0],$_[0]);
}
sub thinLine{
  return sprintf("border-%s-style:solid; border-%s-width:%fcm;border-%s-color:#000000;",$_[0],$_[0],0.0176,$_[0]);
}

#main
# TTB => thickLine('top'),#thick top black
printf("/*thick top black*/\n.TTB{\n\t%s\n}",thickLine('top'));
# tTB => thinLine('top'),#thin top black
printf("/*thin top black*/\n.tTB{\n\t%s\n}",thinLine('top'));
