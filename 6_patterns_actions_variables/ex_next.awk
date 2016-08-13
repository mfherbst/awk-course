#!/usr/bin/awk -f

# Print first name
{ print $1 }

# skip if not letters B and M
! (/^B/ || /^M/) {
       print "   Skipping"
       next
}

# print number and empty line
{
	print $2
	print ""
}
