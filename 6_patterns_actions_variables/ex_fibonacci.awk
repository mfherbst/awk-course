#!/usr/bin/awk -f
{
	# Extract n and convert to number
	n=+$1

	# The previous element of the sequence
	prev=0

	# The result we want to finally print
	res=1

	# Exit on an error with exit code 1:
	if (n <= 0) {
		print "Error: n <= 0: " $1
		exit 1
	}

	# Special case: Just print the value and jump to next record
	if (n == 1) {
		print prev
		next
	}

	# Decrement n by 2 (the first element of the sequence was
	# dealt with above and the second requires no computation)
	n -= 2

	# Compute Fibonacci and decrement n as we go along
	while (n > 0) {
		tmp = res+prev
		prev = res
		res = tmp
		n -= 1
	}
	print res
}
