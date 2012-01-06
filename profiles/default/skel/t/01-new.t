#!perl

use Test::More tests => 1;

use {{$name}};

my $o = {{$name}}->new;
isa_ok( $o, '{{$name}}' );
