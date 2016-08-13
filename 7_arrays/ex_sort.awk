#!/usr/bin/awk -f
{
	# store record in array
	# indexed under first column
	array[$1] = $0

	# determine and store maximum index
	if ($1 > max) {
		max = $1
	}
}
END {
	# Print array entries
	# Here we assume that all values from 1 until max
	# are actually used by at least one row in the input.
	for(x=1; x<=max; ++x) {
		print array[x]
	}
}
