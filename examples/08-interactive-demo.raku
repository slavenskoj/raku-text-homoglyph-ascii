#!/usr/bin/env raku

use lib '../lib';
use Text::Homoglyph::ASCII;

say "=== Interactive Homoglyph Demo ===\n";
say "This demo shows how different cleaning methods work.\n";
say "Type 'quit' to exit.\n";

loop {
    print "Enter text to analyze (or 'quit'): ";
    my $input = $*IN.get;
    
    last if !$input || $input.lc eq 'quit';
    
    say "\nAnalysis of: $input";
    say "-" x 50;
    
    # Show different cleaning methods
    say "clean-ascii:      " ~ clean-ascii($input);
    say "clean-ascii-more: " ~ clean-ascii-more($input);
    say "clean-ascii-pure: " ~ clean-ascii-pure($input);
    
    # Detect homoglyphs
    my @homoglyphs = detect-ascii-homoglyphs($input);
    if @homoglyphs {
        say "\nHomoglyphs detected:";
        for @homoglyphs -> $h {
            my $hex = $h<char>.ord.fmt('U+%04X');
            say "  '{$h<char>}' ($hex) → '{$h<ascii>}' at position {$h<position>}";
        }
    } else {
        say "\nNo homoglyphs detected.";
    }
    
    # Show character analysis
    say "\nCharacter-by-character analysis:";
    my $pos = 0;
    for $input.comb -> $char {
        my $cleaned = clean-ascii($char);
        my $hex = $char.ord.fmt('U+%04X');
        
        if $char ne $cleaned {
            say "  [$pos] '$char' ($hex) → '$cleaned' [HOMOGLYPH]";
        } elsif $char.ord > 127 {
            say "  [$pos] '$char' ($hex) [NON-ASCII]";
        } else {
            say "  [$pos] '$char' ($hex) [ASCII]";
        }
        $pos++;
    }
    
    say "\n";
}

say "\nGoodbye!";