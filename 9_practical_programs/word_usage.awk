#!/usr/bin/awk -f

{
	# Normalise the input record:
	# a) Remove punctuation (i.e. everything which is not
	#    a space char or an alphanumeric character)
	$0 = gensub(/[^[:blank:][:alnum:]-]/,"","g",$0)
	#
	# b) Make everything lower case:
	$0 = tolower($0)

	# Add each field (word) to the wordcount array, which keeps
	# track of how many times a word has been used and increment
	# the count by one.
	for (i=1;i<=NF;++i){
		wordcount[$i]++
	}
}

END {
	# Print the count followed by the words
	for (a in wordcount) {
		printf("%5d %s\n",wordcount[a],a)
	}
}

