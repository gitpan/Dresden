use Module::Build;

my $build = new Module::Build
 (
  module_name        => 'Dresden',
  license            => 'perl',
  requires           => {
                         perl  => '5.6.1',
                        },
  create_makefile_pl => 'passthrough',
 );
$build->create_build_script;
$build->create_makefile_pl;
