package Dresden::TestHelper;

use strict;
use warnings;

use base 'Exporter';

@Dresden::TestHelper::EXPORT_OK = qw( ok not_ok );
%Dresden::TestHelper::EXPORT_TAGS = (
                                     test => [ qw( ok not_ok ) ]
                                    )
 ;

my $test = 1;

sub not_ok {
  my $text = shift || '';
  print "not ok $test $text\n";
  $test++;
}

sub ok {
  my $text = shift || '';
  print "ok $test $text\n";
  $test++;
}

1;
