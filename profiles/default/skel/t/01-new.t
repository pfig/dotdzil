#!perl
{{ ( $n = $dist->name ) =~ s/-/::/g; ''; }}
use Test::More tests => 1;

use {{ $n }};

my $o = {{ $n }}->new;
isa_ok( $o, '{{ $n }}' );
