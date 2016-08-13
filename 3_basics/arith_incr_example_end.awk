# Count number of lines with a as second character
/.a/ { acount+= 1 }

# Count the number of lines containing 2
/2/  { twocount++ }

END {
	print "We found " acount " 'a's as second character"
	print "We found " twocount " lines containing '2'"
}
