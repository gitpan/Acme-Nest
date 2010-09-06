# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Acme-Nest.t'

#########################

use Test;
BEGIN { plan tests => 4 };
use Acme::Nest;
ok(1); # If we made it this far, we're ok.

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

ok(exists &{ "Acme::Nest::import" });
ok(exists &{ "Acme::Nest::Nest::import" });
ok(exists &{ "Acme::Nest::Nest::Nest::import" });
