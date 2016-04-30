#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

my $result = 0;
for (my $i = 1; 1; $i++) {
    my $fibo = fibonacci($i);
    last  if($fibo > 4_000_000);
    $result += $fibo  if($fibo % 2 == 0);
}
say $result;

sub fibonacci {
    my $n = shift;
    return 0  if($n == 0);
    return 1  if($n == 1);
    return fibonacci($n - 1) + fibonacci($n - 2);
}
