#!/usr/bin/awk -f
{
	for (i=1; i<=NF;++i) {
		$i = length($i)
	}
	print $0
}
