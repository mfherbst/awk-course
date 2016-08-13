#!/usr/bin/awk -f
BEGIN {
	### Settings
	file="teeout.log"
}

# Print to stdout and to file
{
	print > file
	print
}
