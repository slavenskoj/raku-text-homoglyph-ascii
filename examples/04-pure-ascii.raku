#!/usr/bin/env raku

use lib '../lib';
use Text::Homoglyph::ASCII;

say "=== Pure ASCII Examples ===\n";

# Example 1: Force everything to ASCII
say "1. Complete ASCII conversion:";
my $text1 = 'café 👋 €100 →next← 中文';
say "   Original:         $text1";
say "   clean-ascii:      " ~ clean-ascii($text1);
say "   clean-ascii-more: " ~ clean-ascii-more($text1);
say "   clean-ascii-pure: " ~ clean-ascii-pure($text1);
say "";

# Example 2: Safe filenames
say "2. Filename sanitization:";
my @filenames = (
    'My Résumé (2024).pdf',
    'Отчёт №123.xlsx',
    'Budget €2024 → Final.doc',
    '写真コレクション.jpg',
    'Meeting Notes 📝.txt',
);

for @filenames -> $filename {
    my $safe = clean-ascii-pure($filename);
    say "   $filename";
    say "   → $safe";
}
say "";

# Example 3: URL slug generation
say "3. URL-safe slugs:";
my @titles = (
    'Café Reviews: Best Espresso in París',
    'Теория относительности для начинающих',
    '2024年の東京オリンピック',
    'Naïve Bayes Algorithm Explained',
);

for @titles -> $title {
    my $slug = clean-ascii-pure($title).lc.subst(/<-[a..z0..9]>+/, '-', :g).subst(/^'-'|'-'$/, '', :g);
    say "   $title";
    say "   → $slug";
}
say "";

# Example 4: Comparison of all cleaning methods
say "4. Method comparison:";
my $complex = 'Ｈéllo™ café 中文 👍 naïve résumé';
say "   Original:         $complex";
say "   clean-ascii:      " ~ clean-ascii($complex);
say "   clean-ascii-more: " ~ clean-ascii-more($complex);
say "   clean-ascii-pure: " ~ clean-ascii-pure($complex);