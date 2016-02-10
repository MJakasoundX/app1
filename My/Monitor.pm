package My::Monitor;

use strict;
use warnings;

sub new {
  my $class = shift;
  my $self = { tries => 0 };
  return bless $self, $class;
}

sub check {
  my $self = shift;
  my $reactor = shift;

  my $temp = $reactor->temperature;

  if ($temp > 100) {
    $reactor->cooldown;
    ++$self->{tries};

    if ($self->{tries} > 5) {
      return;
    }

    return 1;

  } else {
    $self->{tries} = 0;
    return 1;
  }
}

1;
