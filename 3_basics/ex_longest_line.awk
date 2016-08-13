#!/usr/bin/awk -f
length($0) > max { max = length($0) }
END { print "The longest line has " max " characters." }
