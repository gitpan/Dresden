### -*- mode: perl; -*-

use Dresden;
use Dresden::TestHelper qw(:test);

use strict;
use warnings;

BEGIN { $| = 1; print "1..1\n"; }

################## tests ##################

##############
Dresden::hello() =~ /Hello world/
 ? ok     ("hello")
 : not_ok ("hello");


