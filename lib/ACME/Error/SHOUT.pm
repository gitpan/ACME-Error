package ACME::Error::SHOUT;

use strict;
no  strict 'refs';

use vars qw[$VERSION];
$VERSION = '0.01';

*warn_handler = *die_handler = sub {
  my @error = @_;
  $error[$_] =~ s/.$/!/g for 0 .. $#error;
  return map uc, @error;
};

1;
__END__
# Below is stub documentation for your module. You better edit it!

=head1 NAME

ACME::Error::SHOUT - Perl extension for blah blah blah

=head1 SYNOPSIS

  use ACME::Error SHOUT;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for ACME::Error, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.


=head1 AUTHOR

A. U. Thor, a.u.thor@a.galaxy.far.far.away

=head1 SEE ALSO

perl(1).

=cut
