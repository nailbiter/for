#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: cssToStyledComponents.pl
#
#        USAGE: ./cssToStyledComponents.pl  
#
#  DESCRIPTION: convert declarations such as `const Div_jYMHeyjvReDs = (props) => (React.createElement("div", { className: "jYMHeyjvReDs" }, props.children));` to declarations using `styled-component` package
#
#      OPTIONS: [name of .css files]
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/24/2019 15:28:48
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Path::Tiny qw(path);
use Data::Dumper;


#procedures

#main
my %cssParsed;
for(@ARGV) {
    my $css = path($_)->slurp_utf8;
    while( $css =~ /\.(?<cssKey>[a-zA-Z0-9]+)(?<cssModifier>:[a-zA-Z0-9]+)?\s*\{(?<cssBody>[^}{]+)\}/g ) {
        $cssParsed{$+{cssKey}} //= "";
        $cssParsed{$+{cssKey}} .= (defined $+{cssModifier}) ? sprintf("%s {%s}",$+{cssModifier},$+{cssBody}) : $+{cssBody};
    }
}
#print STDERR Dumper(\%cssParsed);
while(<STDIN>) {
    chomp;
    if(/const (?<varName>[_a-zA-Z0-9]+) = \(props\) => \(React\.createElement\("(?<htmlName>[a-z]+)", \{ className: "(?<cssKey>[a-zA-Z0-9]+)" \}, props\.children\)\);/) {
        printf("const %s = styled.%s`%s`;\n",
            @+{"varName","htmlName"},
            $cssParsed{$+{cssKey}},
        );
    }
}
