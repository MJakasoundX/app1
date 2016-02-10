use Test::More;

BEGIN { use_ok('My::Class'); }

ok(my $obj = My::Class->new, 'Got an object');

isa_ok($obj, 'My::Class');

can_ok('My::Class', qw[set_foo get_foo]);

$obj->set_foo('Foo');

is($obj->get_foo, 'Foo', 'The foo is "Foo"');

#is($obj->do_bar, 'bar', 'The bar is ok');

isnt($obj, 'My::Class2',  'This doesn\'t exist');

is_deeply($obj, { foo => 'Foo' }, 'Object matches');

SKIP: {
  eval { require MJ::Wpay };
  skip 'MJ::Wpay is missing', 2
    if $@;
 #test
}

TODO: {
  local $TODO = 'Math';
is(2+2, 5);
is(2*2, 4); }

done_testing;
