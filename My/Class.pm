package My::Class;

use Modern::Perl;

sub new {
  my $class = shift;
  return bless {}, $class;
}

sub set_foo {
  my $self = shift;
  $self->{foo} = shift;
}

sub get_foo {
  my $self = shift;
  return $self->{foo};
}

sub do_bar {
  my $self = shift;
  return $self->{bar};
}

1;

