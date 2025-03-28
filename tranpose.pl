#!/usr/bin/perl -anF/\s|\n/
$n = @F - 1 if !$n;
for $i (0..$n) {
    push @{ $m->[$i] }, $F[$i];
}
END {
    for $r (@$m) {
        print join(" ", @$r), "\n";
    }
}
