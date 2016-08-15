#!/usr/bin/awk -f
{
	# Accumulate the divisors
	divsum=0

	# Loop over all numbers excluding the
	# one we deal with:
	n=$1
	for (i=1; i < n; ++i) {
		if (n % i == 0) {
			divsum+=i
			if (divsum > n) break
		}
	}

	if (divsum == n) {
		printf("%d is a perfect number\n",n)
	} else {
		printf("%d is not a perfect number\n",n)
	}
}
