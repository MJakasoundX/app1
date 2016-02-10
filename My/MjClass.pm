package My::MjClass;

use strict;
use warnings;

sub new {
  my $class = shift;
  return bless {}, $class;
}

sub set_foo {
  my $self = shift;
  $self->{bar} = shift;
}

sub get_foo {
  my $self = shift;
  return $self->{baz};
}

1;

