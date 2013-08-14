use Test::More tests => 2;
{{ ( $n = $dist->name ) =~ s/-/::/g; ''; }}
use strict;
use warnings;

# the order is important
use {{$n}};
use Dancer::Test;

route_exists [GET => '/'], 'a route handler is defined for /';
response_status_is ['GET' => '/'], 200, 'response status is 200 for /';
