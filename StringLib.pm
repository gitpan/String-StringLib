package String::StringLib;

use strict;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

require Exporter;
require DynaLoader;
require AutoLoader;

@ISA = qw(Exporter DynaLoader);

@EXPORT = qw(
	     StripLSpace
	     StripTSpace
	     StripLTSpace
	     StripSpace
);
$VERSION = '1.00';

bootstrap String::StringLib $VERSION;

1;
__END__

=head1 NAME

String::StringLib - Perl extension for fast, commonly used, string
operations

=head1 SYNOPSIS

  use String::StringLib;

  ...

  StripLTSpace($a);
  StripTSpace
  StripLSpace
  StripSpace


=head1 DESCRIPTION

StripLTSpace - 	Removes Leading and Trailing spaces from given string
StripTSpace - Removes Trailing spaces from given string
StripLSpace - Removes Leading spaces from given string
StripSpace - Removes all spaces from given string

I do these things often, and these routines tend to be about 35%
faster than the corresponding regex methods.

=head1 AUTHOR

Brent B. Powers (B2Pi), Powers@B2Pi.com

Copyright(c) 1999 Brent B. Powers. All rights reserved. This program
is free software, you may redistribute it and/or modify it under the
same terms as Perl itself.

=head1 SEE ALSO

perl(1).

=cut
