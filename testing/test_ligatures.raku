#!/usr/bin/env raku

use lib 'lib';
use Text::Homoglyph::ASCII;

# Test ligatures with different cleaning functions
my @ligatures = ('ß', 'æ', 'œ', 'Æ', 'Œ');

say "Testing ligature handling:\n";

for @ligatures -> $char {
    say "Character: '$char' (U+{$char.ord.base(16)})";
    
    # Test clean-ascii (basic homoglyph cleaning)
    my $clean = clean-ascii($char);
    say "  clean-ascii: '$clean'";
    
    # Test clean-ascii-more (with NFKD)
    my $clean-more = clean-ascii-more($char);
    say "  clean-ascii-more: '$clean-more'";
    
    # Test clean-ascii-pure
    my $clean-pure = clean-ascii-pure($char);
    say "  clean-ascii-pure: '$clean-pure'";
    
    # Show what NFKD alone does
    my $nfkd = $char.NFKD;
    say "  NFKD decomposition: ", $nfkd.list.map({ "U+" ~ $_.base(16) }).join(" ");
    say "";
}

# Test in context
say "\nTesting in context:";
my $text1 = "Das ist ein großer Spaß";
say "Original: '$text1'";
say "clean-ascii-more: '", clean-ascii-more($text1), "'";

my $text2 = "The æther and œuvre";
say "\nOriginal: '$text2'";
say "clean-ascii-more: '", clean-ascii-more($text2), "'";

my $text3 = "Cæsar's encyclopædia";
say "\nOriginal: '$text3'";
say "clean-ascii-more: '", clean-ascii-more($text3), "'";