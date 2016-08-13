#!/usr/bin/awk -f
{
	sum=0        # initialise the sum

	# Loop over all fields:
	# NF is a special variable (see next section) which contains the
	# number of fields of the current record
	for(i=1; i<=NF; ++i) {
		sum += $i  # add the value of the ith field
	}

	print sum    # print the result
}
