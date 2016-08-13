#!/usr/bin/awk -f

{
	# Entry does not exist for the first record
	# => acts as zero
	arr["some"]+=$1
}
END {
	print "We have " arr["some"] " and -->" arr["any"] "<--"
}
