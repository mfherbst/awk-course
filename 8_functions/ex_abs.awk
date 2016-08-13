#!/usr/bin/awk -f
function abs(x) {
	if (x < 0) {
		return -x
	}
	return +x
}
{
	for (i=1; i<NF; ++i) {
		$i = abs($i)
	}
	print $0
}
