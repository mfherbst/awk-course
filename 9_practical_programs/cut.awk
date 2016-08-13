#!/usr/bin/awk -f
BEGIN {
	### Settings
	# The field separator (cut flag -f)
	f="\t"
	# Which field should we extract (flag -d)
	d=3
	### End settings

	# Copy field separator from settings:
	FS=f
}

# Only print the appropriate field.
{ print $d }
