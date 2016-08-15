# Count number of lines with a as second character
/^.a/ { acount+= 1 }

# Count the number of lines containing 2
/2/  { twocount++ }

{
	print "So far found " acount " 'a's as second character"
	print "So far found " twocount " lines containing '2'"
	print "--"
}
