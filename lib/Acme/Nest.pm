package Acme::Nest;

use 5.006000;
use strict;
use warnings;

our $VERSION = "0.02";

my @todo;

sub import {
    foreach my $module (@_) {
        my($parent_class, $end_class);

        if ($module =~ m/(.*)::(.*)/) {
            ($parent_class, $end_class) = ($1, $2);
        }
        else {
            ($parent_class, $end_class) = ("", $module);
        }

        no strict "refs";
        # Don't trash inner class
        next if ${ $module . "::" }{ $end_class . "::" };
        ${ $module . "::" }{ $end_class . "::" } =
            ${ $parent_class . "::" }{ $end_class . "::" };
    }
	
    @todo = ();
}

1;
__END__

=head1 NAME

Acme::Nest - Perl extension for extending package names.

=head1 SYNOPSIS

  use Acme::Nest "My::Module";
  My::Module::Module::Module::shiny();

=head1 DESCRIPTION

Are your namespaces boringly simple? Are they lacking enough of the
nesting that mark them out as real modules? Acme::Nest will add
all of that extra nesting with no extra work.

Simple use Acme::Nest with your module name as a parameter and it'll
alias My::Shiny::Module to My::Shiny::Module::Module and 
My::Shiny::Module::Module::Module ad infinitum, giving you nice long
module names you can give to family and friends.

=head1 AUTHOR

Luke Ross, E<lt>lr@lukeross.nameE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2010 by Luke Ross

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.1 or,
at your option, any later version of Perl 5 you may have available.

=cut
