#!/usr/bin/env raku

use lib '../lib';
use Text::Homoglyph::ASCII;

say "=== Enhanced Cleaning Examples ===\n";

# Example 1: Clean homoglyphs AND remove accents
say "1. Homoglyphs + Accents:";
my $text1 = 'Ｈéllo café naïve résumé';
say "   Original:        $text1";
say "   clean-ascii:     " ~ clean-ascii($text1);
say "   clean-ascii-more: " ~ clean-ascii-more($text1);
say "";

# Example 2: Handle combining diacritics
say "2. Combining Diacritics:";
my $text2 = "e\x[0301]" ~ " na" ~ "i\x[0308]" ~ "ve re" ~ "sume\x[0301]";  # é naïve résumé with combining marks
say "   Original (with combining marks): $text2";
say "   clean-ascii-more: " ~ clean-ascii-more($text2);
say "";

# Example 3: Preserve emoji while cleaning text
say "3. Emoji Preservation:";
my $text3 = 'Неllo 👋 café ñiño 😊';
say "   Original:        $text3";
say "   clean-ascii:     " ~ clean-ascii($text3);
say "   clean-ascii-more: " ~ clean-ascii-more($text3);
say "";

# Example 4: Various Unicode normalization cases
say "4. Unicode Normalization Examples:";
my @examples = (
    'fiﬁle' => 'Ligature fi',
    'Ⅻ Ⅳ Ⅸ' => 'Roman numerals',
    '① ② ③' => 'Circled numbers',
    'ℌello ℤorld' => 'Letterlike symbols',
    '𝒜ℬ𝒞 𝒶𝒷𝒸' => 'Script mathematical',
);

for @examples -> $pair {
    my $text = $pair.key;
    my $desc = $pair.value;
    say "   $desc:";
    say "     Original: $text";
    say "     Cleaned:  " ~ clean-ascii-more($text);
}