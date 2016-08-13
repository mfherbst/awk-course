#!/usr/bin/awk -f

BEGIN {
	### Settings
	shift=13     # The shift to use (here 13 chars)
	

	# All letters of the alphabet in lower and upper case
	alphaLower="abcdefghijklmnopqrstuvwxyz"
	alphaUpper=toupper(alphaLower)

	# The number of letters in the alphabet:
	NL=length(alphaLower)

	# Use the shift variable and above strings to build an array
	# for translating each character of the alphabet:
	for (i=1; i<=NL;++i) {
		# first lower case
		from=substr(alphaLower,i,1)
		to=substr(alphaLower,(i+shift)%NL,1)
		trans[from]=to

		# now upper case
		from=substr(alphaUpper,i,1)
		to=substr(alphaUpper,(i+shift)%NL,1)
		trans[from]=to
	}

	# Make sure that we traverse the data character by character:
	FS=""

	# Make sure there are no characters added to the output:
	OFS=""
}

# Function to translate the characters:
# alters all characters known to the alphabet
function translate(c) {
	if (c in trans) {
		return trans[c]
	} else {
		return c
	}
}

# Translate character by character ie field by field
{
	for(i=1; i<=NF; ++i) {
		printf("%1s",translate($i))
	}
	# Finish the line:
	print ""
}
