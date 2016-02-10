use Test::More tests => 4;
#use Test::Simple tests => 4;

BEGIN { use_ok('My::Class'); }

ok(my $obj = My::Class->new, 'Got an object');

isa_ok($obj, 'My::Class');

$obj->set_foo('Foo');

is($obj->get_foo, 'Foo', 'The foo is "Foo"');

#ok(my $obj2 = My::MjClass->new, 'Got MjClass');
