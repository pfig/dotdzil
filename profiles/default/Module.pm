use strict;
use warnings;
package {{$name}};

# ABSTRACT: This does what it does, and it does it well.
{{ ( $n = $name ) =~ s/::/-/g; ''; }}

use 5.012;

=head1 DESCRIPTION

A brief description of what this code does, or a longer explanation.

=head1 SYNOPSIS

    use {{$name}};

    my $foo = {{$name}}->new();
    # ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

sub new {
    return bless {}, __PACKAGE__;
}

=head2 function2

=cut

sub function2 {
}

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

1; # End of {{$name}}
