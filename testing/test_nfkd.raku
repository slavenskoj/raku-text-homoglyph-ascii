#!/usr/bin/env raku

# Test NFKD decomposition
my $char = 'ë';  # U+00EB

say "Original: '$char'";
say "Original codepoints: ", $char.ords.map({ "U+" ~ .base(16) }).join(", ");

my $nfkd = $char.NFKD;
say "\nNFKD result: '$nfkd'";
say "NFKD codepoints: ", $nfkd.list.map({ "U+" ~ .base(16) }).join(", ");

# Let's also check NFD
my $nfd = $char.NFD;
say "\nNFD result: '$nfd'";
say "NFD codepoints: ", $nfd.list.map({ "U+" ~ .base(16) }).join(", ");