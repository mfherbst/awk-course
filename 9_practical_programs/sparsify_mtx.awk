#!/usr/bin/awk -f

BEGIN {
	# Our threshold for the values
	eps = 1e-12
}

function abs(a) {
	if (a<0) {
		return -a
	} else {
		return +a
	}
}

# Print the first comment line, since
# it contains some important information
/^%%/ { print; next }

# all others ignore
/^%/ { next }

# the first non-comment line is the shape of the matrix
# interpret and store it:
shape_encountered == 0 {
	shape_encountered=1

	# number of rows and columns of the matrix:
	nrows = $1
	ncols = $2

	# Note: The d, i.e. the number of non-zeros
	# will change due to this program and is
	# hence not kept
	next
}

# All other comment lines contain data.
# Add it to the values array if its value
# (3rd field) is larger than the threshold
abs($3) > eps {
	# Store the record and increase non-zero count
	values[++nnonzeros] = $0
}

# In the end write the altered file:
END {
	# Print shape and number of non-zeros:
	print(nrows,ncols,nnonzeros)

	# Print all values:
	for (i=1; i<nnonzeros; ++i)
		print(values[i])
}
