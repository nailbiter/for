#!/usr/bin/perl
@lines = ();
$i = 0;
while( <> )
{
    $lines[$i] = $_;
    $i++;
}
$size = $i;
$i = 0;
while( $i < $size )
{
    chomp($lines[$i/2]);
    chomp($lines[$i/2 + $size/2]);
    print $lines[$i/2] . "," . $lines[$i/2 + $size/2] . "\n";
    $i += 2;
}
