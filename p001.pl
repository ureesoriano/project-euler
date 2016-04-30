#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

my $result = 0;
$result += ($_ % 3 == 0 or $_ % 5 == 0) ? $_ : 0  foreach(1..999);
say $result;
