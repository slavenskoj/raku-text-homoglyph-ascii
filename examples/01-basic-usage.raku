#!/usr/bin/env raku

use lib '../lib';
use Text::Homoglyph::ASCII;

say "=== Basic Usage Examples ===\n";

# Example 1: Simple homoglyph cleaning
my $text1 = 'Неllo Wоrld';  # Contains Cyrillic Н and о
say "Original: $text1";
say "Cleaned:  " ~ clean-ascii($text1);
say "";

# Example 2: Fullwidth text
my $text2 = 'Ｈｅｌｌｏ　Ｗｏｒｌｄ！';
say "Original: $text2";
say "Cleaned:  " ~ clean-ascii($text2);
say "";

# Example 3: Mathematical alphanumeric symbols
my $text3 = '𝐇𝐞𝐥𝐥𝐨 𝕎𝕠𝕣𝕝𝕕 𝟏𝟐𝟑';
say "Original: $text3";
say "Cleaned:  " ~ clean-ascii($text3);
say "";

# Example 4: Greek letters
my $text4 = 'Αlpha Βeta Γamma';  # Greek A, B, Γ
say "Original: $text4";
say "Cleaned:  " ~ clean-ascii($text4);
say "";

# Example 5: Mixed homoglyphs from different scripts
my $text5 = 'Ｔhe ԛuіck brοwn fοx';
say "Original: $text5";
say "Cleaned:  " ~ clean-ascii($text5);