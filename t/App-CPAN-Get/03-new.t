use strict;
use warnings;

use App::CPAN::Get;
use English;
use Error::Pure::Utils qw(clean);
use Test::LWP::UserAgent;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
my $obj = App::CPAN::Get->new;
isa_ok($obj, 'App::CPAN::Get');

# Test.
eval {
	App::CPAN::Get->new(
		'lwp_user_agent' => 'string',
	);
};
is($EVAL_ERROR, "Parameter 'lwp_user_agent' must be a LWP::UserAgent instance.\n",
	"Parameter 'lwp_user_agent' must be a LWP::UserAgent instance.");
clean();

# Test.
$obj = App::CPAN::Get->new(
	'lwp_user_agent' => Test::LWP::UserAgent->new,
);
isa_ok($obj, 'App::CPAN::Get');
