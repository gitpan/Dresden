#! /usr/bin/perl
### -*- mode: perl; -*-

use strict;
use warnings;

use Dresden::Convert::TWiki;
use Dresden::TestHelper qw(:test);

use Text::Diff;

BEGIN { $| = 1; print "1..1\n"; }

my $fname = "t/vqwikipage.txt";
my $text;
open FH, "<$fname";
{
  local $/;
  $text = <FH>;
}
close FH;

################## tests ##################
my $convert = new Dresden::Convert::TWiki (vqwiki => $text);
my $twiki_text = $convert->twiki;

##############
my $diff = diff \$twiki_text, "t/target_twikipage.txt";
! $diff
 ? ok     ("convert from vqwiki")
 : not_ok ("convert from vqwiki, diff:\n$diff");
