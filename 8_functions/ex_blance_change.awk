#!/usr/bin/awk -f
function abs(x) {
	if (x < 0) {
		return -x
	}
	return +x
}

# Change Field separator (we need a comma)
BEGIN { FS="," }

# if no comment and balance change > 15
/^[^#]/ && abs($2) > 15 {
	printf("%-20s %.2f\n",$1,$2)
}
