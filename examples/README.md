# Text::Homoglyph::ASCII Examples

This directory contains example scripts demonstrating various uses of the Text::Homoglyph::ASCII module.

## Running the Examples

All examples can be run from the examples directory:

```bash
cd examples
raku 01-basic-usage.raku
```

Or with execute permissions:

```bash
chmod +x *.raku
./01-basic-usage.raku
```

## Example Scripts

### 01-basic-usage.raku
Basic usage of the `clean-ascii` function with various types of homoglyphs:
- Cyrillic lookalikes
- Fullwidth characters
- Mathematical alphanumeric symbols
- Greek letters
- Mixed homoglyphs

### 02-detection.raku
Demonstrates homoglyph detection capabilities:
- Detecting individual homoglyphs
- URL security checking
- Verbose analysis with detailed replacement information

### 03-enhanced-cleaning.raku
Shows the `clean-ascii-more` function:
- Removing accents and diacritics
- Handling combining characters
- Preserving emoji while cleaning text
- Various Unicode normalization cases

### 04-pure-ascii.raku
Demonstrates the `clean-ascii-pure` function:
- Forcing everything to pure ASCII
- Filename sanitization
- URL slug generation
- Comparison of all three cleaning methods

### 05-security-applications.raku
Security-focused examples:
- Domain name validation
- Username security checks
- Email address validation
- Security log analysis for homoglyph attacks

### 06-text-normalization.raku
Text processing and normalization:
- Social media text cleaning
- Search term normalization
- CSV data cleaning
- Database field normalization
- Fuzzy text matching

### 07-batch-processing.raku
Batch processing examples:
- Processing multiple files
- Analyzing document content
- Bulk email validation
- Generating analysis reports
- Performance testing

### 08-interactive-demo.raku
An interactive demonstration where you can:
- Enter any text to analyze
- See all three cleaning methods applied
- Get character-by-character analysis
- Identify specific homoglyphs with Unicode codepoints

## Common Use Cases

### Security
```raku
# Check for domain spoofing
my $domain = 'раураl.com';  # Fake PayPal
if $domain ne clean-ascii($domain) {
    say "WARNING: Possible phishing domain!";
}
```

### Data Cleaning
```raku
# Normalize user input
my $username = clean-ascii-pure($user-input);
```

### Text Processing
```raku
# Remove fancy formatting from social media
my $post = '𝐇𝐞𝐥𝐥𝐨 𝐞𝐯𝐞𝐫𝐲𝐨𝐧𝐞!';
my $plain = clean-ascii($post);  # Hello everyone!
```

### File Management
```raku
# Create safe filenames
my $filename = 'Café Menu (2024).pdf';
my $safe = clean-ascii-pure($filename);  # Cafe_Menu_(2024).pdf
```