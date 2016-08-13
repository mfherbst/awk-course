#!/usr/bin/awk -f

/[aeiou]/ {
	# invert flag
	flag = !flag
}

# Print if condition and flag
# are satisfied.
/[aeiou]/ && flag
