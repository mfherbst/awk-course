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
	for(x=1; x<=max; ++x) {
		if (x in array) {
			print array[x]
		}
	}
}
