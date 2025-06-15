#!/usr/bin/env raku

use lib '../lib';
use Text::Homoglyph::ASCII;

say "=== Text Normalization Examples ===\n";

# Example 1: Social media text normalization
say "1. Social Media Text:";
my @social-posts = (
    '𝐇𝐞𝐥𝐥𝐨 𝐞𝐯𝐞𝐫𝐲𝐨𝐧𝐞! 👋',
    'Ｃｈｅｃｋ ｏｕｔ ｍｙ ｎｅｗ ｖｉｄｅｏ!',
    '🎉 𝕎𝕖 𝕣𝕖𝕒𝕔𝕙𝕖𝕕 𝟙𝟘𝕂 𝕗𝕠𝕝𝕝𝕠𝕨𝕖𝕣𝕤!',
    'ℒ𝒾𝓀ℯ & 𝒮𝓊𝒷𝓈𝒸𝓇𝒾𝒷ℯ',
    '① Follow ② Like ③ Share',
);

for @social-posts -> $post {
    say "   Original: $post";
    say "   Normal:   " ~ clean-ascii($post);
    say "";
}

# Example 2: Search normalization
say "2. Search Term Normalization:";
sub normalize-search($query) {
    return clean-ascii-more($query).lc;
}

my @searches = (
    'Ｃａｆé reviews',
    'ＨＯＴＥＬ bookings',
    'naïve algorithm',
    'résumé templates',
    '𝐛𝐞𝐬𝐭 𝐫𝐞𝐬𝐭𝐚𝐮𝐫𝐚𝐧𝐭𝐬',
);

say "   Search normalization for database queries:";
for @searches -> $search {
    say "   '$search' → '" ~ normalize-search($search) ~ "'";
}
say "";

# Example 3: CSV data cleaning
say "3. CSV Data Cleaning:";
my @csv-data = (
    ['Ｎａｍｅ', 'Ｅｍａｉｌ', 'Ｐｈｏｎｅ'],
    ['Jоhn Doe', 'john@еxample.com', '555-𝟏𝟐𝟑𝟒'],
    ['Μary Smith', 'mary@test.com', '555-５６７８'],
    ['José García', 'jose@café.com', '555-９０１２'],
);

say "   Cleaning CSV data:";
for @csv-data -> @row {
    my @cleaned = @row.map({ clean-ascii-pure($_) });
    say "   " ~ @cleaned.join(', ');
}
say "";

# Example 4: Database field normalization
say "4. Database Field Normalization:";
my %user-data = (
    username => 'jоhn_doe',
    email => 'john@еxample.com',
    full_name => 'John Döe',
    bio => 'Love ☕ café and 🍕 pizza!',
    location => 'París, France',
);

say "   Original user data:";
for %user-data.kv -> $key, $value {
    say "     $key: $value";
}

say "\n   Normalized for ASCII-only database:";
for %user-data.kv -> $key, $value {
    my $normalized = clean-ascii-pure($value);
    say "     $key: $normalized";
}
say "";

# Example 5: Text comparison
say "5. Text Comparison:";
sub texts-match($text1, $text2) {
    my $norm1 = clean-ascii-more($text1).lc;
    my $norm2 = clean-ascii-more($text2).lc;
    return $norm1 eq $norm2;
}

my @pairs = (
    ['café', 'CAFÉ'],
    ['resume', 'résumé'],
    ['Неllo', 'Hello'],
    ['ＴＥＳＴ', 'test'],
    ['naïve', 'naive'],
);

say "   Normalized text matching:";
for @pairs -> @pair {
    my $match = texts-match(@pair[0], @pair[1]);
    my $symbol = $match ?? '✓' !! '✗';
    say "   $symbol '{@pair[0]}' vs '{@pair[1]}' → " ~ ($match ?? 'match' !! 'no match');
}