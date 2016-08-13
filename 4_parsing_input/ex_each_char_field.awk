#!/usr/bin/awk -f
BEGIN { FS="" }
{
	print "F1->" $1 "<-"
	print "F2->" $2 "<-"
	print "F3->" $3 "<-"
}
