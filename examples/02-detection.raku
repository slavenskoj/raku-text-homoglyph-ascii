#!/usr/bin/env raku

use lib '../lib';
use Text::Homoglyph::ASCII;

say "=== Homoglyph Detection Examples ===\n";

# Example 1: Detect homoglyphs in suspicious text
my $suspicious = 'Раураl.com';  # Contains Cyrillic Р and а
say "Checking: $suspicious";

my @homoglyphs = detect-ascii-homoglyphs($suspicious);
if @homoglyphs {
    say "⚠️  WARNING: Found " ~ @homoglyphs.elems ~ " homoglyph(s):";
    for @homoglyphs -> $h {
        say "  Position {$h<position>}: '{$h<char>}' → '{$h<ascii>}'";
    }
    say "  Clean version: " ~ clean-ascii($suspicious);
} else {
    say "✓ No homoglyphs detected";
}
say "";

# Example 2: Check multiple URLs
say "URL Security Check:";
my @urls = <
    google.com
    gооgle.com
    аmazon.com
    microsoft.com
    micrоsoft.com
>;

for @urls -> $url {
    my $cleaned = clean-ascii($url);
    if $url ne $cleaned {
        say "  ❌ $url → $cleaned (SUSPICIOUS!)";
    } else {
        say "  ✓ $url (clean)";
    }
}
say "";

# Example 3: Detailed analysis with verbose mode
my $text = 'ᎪᏟᎾᏔ Ｔest 𝟏𝟐𝟑';
say "Detailed analysis of: $text";
my %result = clean-ascii-verbose($text);

say "  Original:     {%result<original>}";
say "  Cleaned:      {%result<cleaned>}";
say "  Changed:      {%result<changed>}";
say "  Replacements: {%result<replacements>.elems}";

if %result<replacements> {
    say "\n  Replacement details:";
    for @(%result<replacements>) -> $r {
        say "    '{$r<char>}' → '{$r<ascii>}' at position {$r<position>}";
    }
}