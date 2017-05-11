#!/usr/bin/env perl

use strict;
use warnings;
# 7c664aaf-3d33-447e-0000-000000000000
my $h = {};
my $ID = 0;
my $newID = 0;
while( <> ) {
	my $line = $_;
	if( $line =~ /([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})/ ) {	
		my $uid = $1;
		if( exists $h->{$uid} ) {
			$ID=$h->{$uid};
		} else {
			$ID=$newID++;
			$h->{$uid} = $ID;
		}
		$line =~ s/$uid/ID-$ID/;
	}
	print $line;
}
