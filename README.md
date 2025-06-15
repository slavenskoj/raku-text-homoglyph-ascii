# Text::Homoglyph::ASCII

A Raku module for cleaning ASCII text from look-alike Unicode characters (homoglyphs).

## Description

This module detects and replaces Unicode characters that visually resemble ASCII characters but have different code points. This is useful for:

- Security: Preventing homograph attacks in URLs and identifiers
- Data normalization: Ensuring consistent text representation
- Text processing: Cleaning user input that may contain fancy Unicode characters

## Installation

```bash
zef install Text::Homoglyph::ASCII
```

## Usage

### Basic Usage

```raku
use Text::Homoglyph::ASCII;

# Clean text by replacing homoglyphs with ASCII
my $text = 'Неllo Wоrld';  # Contains Cyrillic 'Н' and 'о'
my $cleaned = clean-ascii($text);
say $cleaned;  # Output: Hello World
```

### Detecting Homoglyphs

```raku
# Detect homoglyphs without modifying the text
my $text = 'Неllo Wоrld';
my @homoglyphs = detect-ascii-homoglyphs($text);

for @homoglyphs -> $h {
    say "Found '{$h<char>}' at position {$h<position>}, maps to '{$h<ascii>}'";
}
# Output:
# Found 'Н' at position 0, maps to 'H'
# Found 'о' at position 7, maps to 'o'
```

### Verbose Cleaning

```raku
# Get detailed information about the cleaning process
my %result = clean-ascii-verbose('Неllo Wоrld');

say "Original: {%result<original>}";
say "Cleaned: {%result<cleaned>}";
say "Changed: {%result<changed>}";
say "Replacements: {%result<replacements>.elems}";
```

## Supported Character Sets

The module recognizes and converts homoglyphs from:

- **Cyrillic**: А, В, Е, К, М, Н, О, Р, С, Т, У, Х, а, е, о, р, с, у, х, etc.
- **Greek**: Α, Β, Ε, Η, Ι, Κ, Μ, Ν, Ο, Ρ, Τ, α, β, ε, η, ι, κ, μ, ν, ο, ρ, τ, etc.
- **Cherokee**: Ꭺ, Ᏼ, Ꮯ, Ꭰ, Ꭼ, Ꮐ, Ꮋ, Ꭸ, etc.
- **Armenian**: Ա, Մ, Օ, Տ, ա, օ, ս, etc.
- **Georgian**: Ⴍ, Ⴎ, Ⴐ, Ⴝ, ო, ი, etc.
- **Mathematical Alphanumeric Symbols**: 𝐀-𝐙, 𝐚-𝐳, 𝟎-𝟗, 𝔸-ℤ, etc.
- **Fullwidth Forms**: Ａ-Ｚ, ａ-ｚ, ０-９
- **Roman Numerals**: Ⅰ, Ⅱ, Ⅲ, Ⅳ, Ⅴ, etc.
- **Various Unicode blocks**: Including bold, italic, script, fraktur, sans-serif variants
- **Ligatures**: ﬁ→fi, ﬀ→ff, ﬂ→fl, etc.

## Examples

### Security: URL Homograph Detection

```raku
my $suspicious-url = 'https://gооgle.com';  # Contains Cyrillic 'о'
my $safe-url = clean-ascii($suspicious-url);
say $safe-url;  # https://google.com

if $suspicious-url ne $safe-url {
    say "Warning: URL contains homoglyphs!";
}
```

### Data Normalization

```raku
# Normalize fancy social media text
my $fancy = '𝐇𝐞𝐥𝐥𝐨 𝕎𝕠𝕣𝕝𝕕! 🎉 Ｌｏｏｋ ａｔ ｔｈｉｓ!';
my $normal = clean-ascii($fancy);
say $normal;  # Hello World! 🎉 Look at this!
```

### Batch Processing

```raku
my @texts = <
    'Ｆｕｌｌｗｉｄｔｈ'
    '𝐁𝐨𝐥𝐝'
    'Ⅻ'
    'Неllo'
>;

my @cleaned = @texts.map({ clean-ascii($_) });
say @cleaned;  # [Fullwidth Bold XII Hello]
```

### Enhanced Cleaning with Accent Removal

```raku
# Handle accented characters and diacritics
my $text = 'café naïve résumé';
my $cleaned = clean-ascii-more($text);
say $cleaned;  # cafe naive resume

# Works with homoglyphs AND accents, preserves emoji
my $mixed = 'Ｈéllo Wörld! 👋😊';  # Fullwidth H + accented letters + emoji
my $cleaned = clean-ascii-more($mixed);
say $cleaned;  # Hello World! 👋😊

# Combining marks are removed
my $combining = "e\x[0301]";  # e + combining acute accent
say clean-ascii-more($combining);  # e
```

### Pure ASCII Output

```raku
# Force everything to ASCII
my $mixed = 'café 👋 €100 →next←';
my $pure = clean-ascii-pure($mixed);
say $pure;  # cafe _ _100 _next_

# Useful for filenames
my $filename = 'My Résumé (2024).pdf';
my $safe = clean-ascii-pure($filename);
say $safe;  # My Resume (2024).pdf

# Handles all types of characters
my $complex = 'Ｈéllo™ café 中文 👍';
my $ascii-only = clean-ascii-pure($complex);
say $ascii-only;  # Hello_ cafe __ _
```

## API Reference

### clean-ascii(Str $text --> Str)

Replaces all homoglyphs in the text with their ASCII equivalents.

### detect-ascii-homoglyphs(Str $text --> Array)

Returns an array of hashes describing each homoglyph found:
- `char`: The homoglyph character
- `ascii`: The ASCII replacement
- `position`: Character position in the string
- `length`: Length of the homoglyph (usually 1, but can be more for ligatures)

### clean-ascii-verbose(Str $text --> Hash)

Returns a hash with:
- `original`: The original text
- `cleaned`: The cleaned text
- `replacements`: Array of replacement details (same as detect-ascii-homoglyphs)
- `changed`: Boolean indicating if any replacements were made

### clean-ascii-more(Str $text --> Str)

An enhanced cleaning function that:
1. Replaces all homoglyphs with ASCII equivalents (same as `clean-ascii`)
2. Decomposes Unicode characters (uses Raku’s built in normalization, similar to NFKD)
3. Removes combining marks/diacritics from decomposable characters

This function preserves non-decomposable Unicode characters (like emoji) while converting accented characters to their base forms (é→e, ñ→n, etc.). Use this when you want to normalize accented text while keeping other Unicode symbols intact.

### clean-ascii-pure(Str $text --> Str)

The most aggressive cleaning function that ensures pure ASCII output:
1. Applies all transformations from `clean-ascii-more`
2. Replaces any remaining non-ASCII characters with underscore (_)

This is useful for systems that require strict ASCII-only text, such as:
- Legacy file systems with ASCII-only filenames
- URLs or identifiers that must be pure ASCII
- Systems that cannot handle any Unicode characters

## Contributing

https://github.com/slavenskoj/Raku-Text-Homoglyph-ASCII

## Author

Danslav Slavenskoj

## License

This module is distributed under the Artistic License 2.0.

## See Also

- [Text::Homoglyph::Cyrillic](https://github.com/slavenskoj/Raku-Text-Homoglyph-Cyrillic) - For cleaning Cyrillic text from homoglyphs
- [Unicode Confusables](https://unicode.org/reports/tr36/) - Unicode Technical Report on security