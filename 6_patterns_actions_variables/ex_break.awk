#!/usr/bin/awk -f
{

	isprime=1
	n=$1
	for (i=2; i*i < n; ++i) {
		if (n % i == 0) {
			isprime=0
			break
		}
	}

	if (isprime) {
		printf("%d is prime\n", n)
	} else {
		printf("Smallest divisor of %d is %d\n", n,i)
	}
}
