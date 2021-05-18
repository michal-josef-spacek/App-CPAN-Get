#!/usr/bin/env perl

use strict;
use warnings;

use App::CPAN::Get;

# Arguments.
@ARGV = (
        'App::Pod::Example',
);

# Run.
exit App::CPAN::Get->new->run;

# Output like: