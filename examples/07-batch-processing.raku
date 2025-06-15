#!/usr/bin/env raku

use lib '../lib';
use Text::Homoglyph::ASCII;

say "=== Batch Processing Examples ===\n";

# Example 1: Process a list of files
say "1. Batch File Processing:";
my @filenames = (
    'Résumé_2024.pdf',
    'Финансовый_отчет.xlsx',
    'Meeting Notes 📝.txt',
    'プロジェクト計画.doc',
    'Café Menu (Final).pdf',
    '写真_コレクション.jpg',
);

say "   Converting filenames to ASCII-safe versions:";
for @filenames -> $original {
    my $safe = clean-ascii-pure($original);
    # Replace spaces and special chars with underscores for extra safety
    $safe = $safe.subst(/<[\s\(\)]>/, '_', :g).subst(/_+/, '_', :g);
    say "   $original";
    say "   → $safe";
    say "";
}

# Example 2: Process text from a file (simulated)
say "2. Processing Text File Content:";
my @lines = (
    'Chapter Ⅰ: Introduction',
    'The café serves excellent еspresso.',
    'Ｔｈｉｓ ｉｓ ａ ｔｅｓｔ ｏｆ ｆｕｌｌｗｉｄｔｈ ｔｅｘｔ.',
    'Mathematical proof: 𝐴² + 𝐵² = 𝐶²',
    'Contact: info@соmpany.com',
);

say "   Processing document lines:";
my $line-num = 1;
for @lines -> $line {
    my $cleaned = clean-ascii($line);
    if $line ne $cleaned {
        say "   Line $line-num changed:";
        say "     From: $line";
        say "     To:   $cleaned";
    } else {
        say "   Line $line-num: unchanged";
    }
    $line-num++;
}
say "";

# Example 3: Bulk email validation
say "3. Bulk Email Validation:";
my @emails = (
    'user@example.com',
    'admin@соmpany.com',     # Cyrillic о and с
    'test@еxample.org',      # Cyrillic е
    'info@tеst.com',         # Cyrillic е
    'support@example.net',
    'contact@cаfé.com',      # Cyrillic а
);

my @suspicious;
my @clean;

for @emails -> $email {
    if $email ne clean-ascii($email) {
        @suspicious.push($email);
    } else {
        @clean.push($email);
    }
}

say "   Clean emails (" ~ @clean.elems ~ "):";
.say for @clean.map({ "     ✓ $_" });

say "\n   Suspicious emails (" ~ @suspicious.elems ~ "):";
for @suspicious -> $email {
    say "     ⚠️  $email → " ~ clean-ascii($email);
}
say "";

# Example 4: Generate report
say "4. Homoglyph Detection Report:";
my @test-strings = (
    'Normal ASCII text',
    'Міхed Сyrillic теxt',
    'Ｆｕｌｌｗｉｄｔｈ　ｔｅｘｔ',
    '𝐌𝐚𝐭𝐡𝐞𝐦𝐚𝐭𝐢𝐜𝐚𝐥 𝐭𝐞𝐱𝐭',
    'café résumé naïve',
);

my $total-homoglyphs = 0;
my %stats;

say "   Analyzing text samples:";
for @test-strings -> $text {
    my @detected = detect-ascii-homoglyphs($text);
    $total-homoglyphs += @detected.elems;
    
    for @detected -> $h {
        my $script = do given $h<char>.ord {
            when 0x0400..0x04FF { 'Cyrillic' }
            when 0xFF00..0xFFEF { 'Fullwidth' }
            when 0x1D400..0x1D7FF { 'Mathematical' }
            default { 'Other' }
        };
        %stats{$script}++;
    }
}

say "\n   Summary Report:";
say "   Total strings analyzed: " ~ @test-strings.elems;
say "   Total homoglyphs found: $total-homoglyphs";
say "\n   Homoglyphs by script:";
for %stats.kv -> $script, $count {
    say "     $script: $count";
}
say "";

# Example 5: Performance test
say "5. Performance Test:";
my $start = now;
my $test-text = 'Hello World! ' x 100;
my $iterations = 1000;

for ^$iterations {
    my $cleaned = clean-ascii($test-text);
}

my $elapsed = now - $start;
say "   Processed $iterations iterations of " ~ $test-text.chars ~ " chars";
say "   Time elapsed: " ~ $elapsed.fmt('%.3f') ~ " seconds";
say "   Rate: " ~ ($iterations / $elapsed).fmt('%.0f') ~ " iterations/second";