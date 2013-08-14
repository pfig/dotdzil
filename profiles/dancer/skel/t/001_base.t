use Test::More tests => 1;
{ ( $n = $dist->name ) =~ s/-/::/g; ''; }
use strict;
use warnings;

use_ok '{{$n}}';
