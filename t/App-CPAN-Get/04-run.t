use strict;
use warnings;

use App::CPAN::Get;
use Test::More 'tests' => 2;
use Test::NoWarnings;
use Test::Output;

# Test.
@ARGV = (
	'-h',
);
my $right_ret = <<'END';
Usage: t/App-CPAN-Get/04-run.t [-h] [--version] module_name[module_version]
	-h		Print help.
	--version	Print version.
	module_name	Module name. e.g. App::Pod::Example
	module_version	Module version. e.g. @1.23, ~1.23 etc.
END
stderr_is(
	sub {
		App::CPAN::Get->new->run;
		return;
	},
	$right_ret,
	'Run help.',
);
