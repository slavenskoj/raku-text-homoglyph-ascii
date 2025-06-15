#!/usr/bin/env raku

use lib '../lib';
use Text::Homoglyph::ASCII;

say "=== Security Applications ===\n";

# Example 1: Domain name validation
say "1. Domain Name Security Check:";

sub check-domain($domain) {
    my $cleaned = clean-ascii($domain);
    my @homoglyphs = detect-ascii-homoglyphs($domain);
    
    if $domain ne $cleaned {
        say "   ⚠️  SUSPICIOUS: $domain";
        say "      Real domain: $cleaned";
        say "      Found " ~ @homoglyphs.elems ~ " homoglyph(s):";
        for @homoglyphs -> $h {
            say "        '{$h<char>}' (U+" ~ $h<char>.ord.fmt('%04X') ~ ") → '{$h<ascii>}'";
        }
    } else {
        say "   ✓ SAFE: $domain";
    }
}

# Test various suspicious domains
check-domain('paypal.com');      # Clean
check-domain('раураl.com');      # Cyrillic 'p' and 'a'
check-domain('аmаzоn.com');      # All Cyrillic lookalikes
check-domain('micrоsoft.com');   # Cyrillic 'o'
check-domain('gооgle.com');      # Both 'o's are Cyrillic
say "";

# Example 2: Username validation
say "2. Username Security:";

sub validate-username($username) {
    my $cleaned = clean-ascii($username);
    if $username ne $cleaned {
        say "   ❌ '$username' contains homoglyphs → '$cleaned'";
        return False;
    } else {
        say "   ✓ '$username' is clean";
        return True;
    }
}

# Test usernames
validate-username('admin');
validate-username('аdmin');      # Cyrillic 'a'
validate-username('jоhn_doe');   # Cyrillic 'o'
validate-username('test123');
say "";

# Example 3: Email address validation
say "3. Email Address Validation:";

sub check-email($email) {
    my ($local, $domain) = $email.split('@');
    my $cleaned-local = clean-ascii($local);
    my $cleaned-domain = clean-ascii($domain);
    my $cleaned-email = "$cleaned-local@$cleaned-domain";
    
    if $email ne $cleaned-email {
        say "   ⚠️  $email";
        say "      → $cleaned-email (contains homoglyphs!)";
    } else {
        say "   ✓ $email (clean)";
    }
}

check-email('user@example.com');
check-email('usеr@example.com');     # Cyrillic 'e'
check-email('admin@еxample.com');    # Cyrillic 'e' in domain
check-email('test@соmpany.com');     # Cyrillic 'o' and 'c'
say "";

# Example 4: Log file analysis
say "4. Security Log Analysis:";
my @log-entries = (
    'Login attempt: admin from 1.1.1.1',
    'Login attempt: аdmin from 1.1.1.100',    # Cyrillic 'a'
    'Login attempt: adмin from 1.1.1.101',    # Cyrillic 'м'
    'Password reset: user@example.com',
    'Password reset: user@еxample.com',           # Cyrillic 'e'
);

say "   Analyzing log entries for suspicious activity:";
for @log-entries -> $entry {
    my $cleaned = clean-ascii($entry);
    if $entry ne $cleaned {
        say "   🚨 ALERT: Homoglyph attack detected!";
        say "      Original: $entry";
        say "      Actual:   $cleaned";
    }
}