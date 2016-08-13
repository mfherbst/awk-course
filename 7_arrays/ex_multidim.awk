#!/usr/bin/awk -f
{
	# Determine maximum number of fields
	# (i.e. the maximum number of columns
	if (NF > max_nf) max_nf = NF

	# Store values of this record(==row) away
	for (i=1; i<=NF; ++i) {
		# store transposed values in a 1-based 2d array
		values[i,NR] = $i
	}
}

# print the resulting array:
END {
	for (i=1; i<=max_nf; ++i) {
		for(j=1; j<=NR; ++j) {
			printf("%s ",values[i,j])
		}
		printf "\n"
	}
}
