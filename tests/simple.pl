#!/usr/bin/perl
@lines = ();
$i = 0;
while( <> )
{
	$lines[$i] = $_;
	chomp($_);
	$res = `echo "$_" | kakasi -i utf8 -JH`;
	chomp($res);
    if ( $res eq $_ ){ print $_ . "\n"; }
    else{ print $_ . "--" . $res . "\n"; }
}
