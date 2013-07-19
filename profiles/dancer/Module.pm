{{ ( $n = $name ) =~ s/::/-/g; ''; }}
package {{$name}};

# ABSTRACT: A fabulous web application.

use Dancer ':syntax';

our $VERSION = '0.1';

get '/' => sub {
  template 'index';
};

get '/hello/:name?' => sub {
  return 'Hello ' . (param('name') || 'anonymous');
};

=head1 AUTHOR

Pedro Figueiredo, C<< <me at pedrofigueiredo.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-{{ lc $n }} at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue={{$n}}>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc {{$name}}


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist={{$n}}>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/{{$n}}>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/{{$n}}>

=item * CPAN

L<http://metacpan.org/module/{{$name}}>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2013 Pedro Figueiredo.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

true; # End of {{$name}}
