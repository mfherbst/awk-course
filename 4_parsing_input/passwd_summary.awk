#!/usr/bin/awk -f

# set field separator to be : or , or many of these chars
BEGIN { FS="[:,]+" }

# give a nice listing of the current entry
# for all uids >= 1000
$3 >= 1000 {
	print $1
	print "   uid:       " $3
	print "   full name: " $5
	print "   home dir:  " $6
	print "   shell:     " $7
}
