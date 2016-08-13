#!/usr/bin/awk -f

# Write each line of text into an array
{ lines[NR] = $0 }

# In the end print them in reverse order
END {
	for (i=NR; i>0; --i) {
		print lines[i]
	}
}
