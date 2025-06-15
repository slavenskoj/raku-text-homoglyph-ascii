#!/usr/bin/env raku

# Test NFKD as replacement for samemark

my @test-strings = (
    'café',
    'naïve', 
    'résumé',
    'ñ',
    'ë',
    'à',
    'ü',
    'ç',
    'Ø',
    'ß',
    'æ',
    'œ',
);

say "Testing NFKD decomposition for accent removal:\n";

for @test-strings -> $str {
    say "Original: '$str'";
    
    # Using samemark
    my $samemark-result = $str.samemark('a');
    say "  samemark: '$samemark-result'";
    
    # Using NFKD and filtering
    my $nfkd = $str.NFKD;
    # Filter out combining marks (Unicode category Mn)
    my $filtered = $nfkd.list.grep({ $_.uniprop('General_Category') ne 'Mn' }).map(*.chr).join;
    say "  NFKD filtered: '$filtered'";
    
    # Also try with NFD
    my $nfd = $str.NFD;
    my $nfd-filtered = $nfd.list.grep({ $_.uniprop('General_Category') ne 'Mn' }).map(*.chr).join;
    say "  NFD filtered: '$nfd-filtered'";
    
    say "";
}

# Test with combining characters
say "\nTesting with combining characters:";
my $combining = "e\c[COMBINING ACUTE ACCENT]";
say "Original: '$combining'";
say "  samemark: '", $combining.samemark('a'), "'";
my $comb-nfkd = $combining.NFKD;
my $comb-filtered = $comb-nfkd.list.grep({ $_.uniprop('General_Category') ne 'Mn' }).map(*.chr).join;
say "  NFKD filtered: '$comb-filtered'";