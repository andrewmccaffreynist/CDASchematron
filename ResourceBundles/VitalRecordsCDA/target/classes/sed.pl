#!/usr/bin/perl

use strict;
use warnings;


my $key = 15000;

my $type;


$type = `find . -name '*.json' -print`;

my @files =  split ('\n',$type);

print  "#files -($#files +1)  \n";
foreach $type (@files) {


	my $from = "\"id\":\"[[:digit:]]*\"";
	my $to = "\"id\":\"$key\"";
	my $zz = `grep -Z id $type `;
	my $tt = `sed -i.bak 's/$from/$to/' $type `;
	my $yy = `grep -Z id $type `;
        $yy =~ s/\n(?!\d+,\d+)//g;
        $zz =~ s/\n(?!\d+,\d+)//g;

print "$type  ($zz) -> ($yy)\n ";
	$from = "\"id\":[[:digit:]]*,";
	$to = "\"id\":$key,";
	$zz = `grep -Z id $type `;
	$tt = `sed -i.bak 's/$from/$to/' $type `;
	$yy = `grep -Z id $type `;
        $yy =~ s/\n(?!\d+,\d+)//g;
        $zz =~ s/\n(?!\d+,\d+)//g;
print "$type  ($zz) -> ($yy)\n ";
     $key++;
}
