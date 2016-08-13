#!/usr/bin/awk -f

{
	width=10
	prec=4

	# build format string
	# the resulting string is "3 args: %10.4e %10.4f"
	format="3 args: "
	format=format "%" width "." prec "e %" width "." prec "f"

	printf(format, $1/$2, $2-$3)
}
