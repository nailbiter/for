#!/usr/bin/perl
@lines = ();
$i = 0;
while( <stdin> )
{
	$lines[$i] = $_;
	chomp($_);
	$res = `echo "$_" | kakasi -i utf8 -JH`;
	chomp($res);
    if ( $res eq $_ ){ print $_ . "\n"; }
    else
    {
	    if( $ARGV[0] eq "rev" )
	    {
	    	print $res . "--" . $_ . "\n"; 
	    }
	    else
	    {
	    	print $_ . "--" . $res . "\n"; 
            }
    }
}
