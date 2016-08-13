#!/usr/bin/awk -f

{
	# if this value does not exist
	# store 1, else increment:
	count[$3]++
}

END {
	# print table summarising what values we have
	# and how many times they occurred:
	print "value | count"
	print "------+------"
	for (val in count) {
		printf("%5d | %5d\n",val,count[val])
	}
}
