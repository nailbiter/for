#!/usr/bin/perl
@lines = ();
$i = 0;
while( <> )
{
	$lines[$i] = $_;
	chomp($_);
	$res = `echo "$_" | kakasi -i utf8 -JH`;
	chomp($res);
	print $_ . "--" . $res . "\n";
}
