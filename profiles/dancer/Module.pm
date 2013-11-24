{{ ( $n = $name ) =~ s/::/-/g; ''; }}
package {{$name}};

# ABSTRACT: A fabulous web application.

use Dancer 1.3116 ':syntax';

get '/' => sub {
  template 'index';
};

get '/hello/:name?' => sub {
  return 'Hello ' . (param('name') || 'anonymous');
};

=head1 AUTHOR

Pedro Figueiredo, C<< <me at pedrofigueiredo.org> >>

=head1 BUGS

Please report any bugs or feature requests through the web interface at
L<https://github.com/pfig/{{lc $n}}/issues>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc {{$name}}


You can also look for information at:

=over 4

=item * GitHub issues (report bugs here)

L<https://github.com/pfig/{{lc $n}}/issues>

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
under the terms of the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

true; # End of {{$name}}
