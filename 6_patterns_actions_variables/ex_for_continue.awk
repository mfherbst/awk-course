#!/usr/bin/awk -f

{
	for (i=0; i<$1; ++i) {
		print "Reached 1 for " i
		if (i%2==0) continue
		print "        2 for " i
	}
}
