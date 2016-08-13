#!/usr/bin/awk -f

# This function normalises a dictionary word by sorting the
# constituent letters alphabetically. Repetitions are kept, ie
# if a letter occurs multiple times in the word, the normalised
# version will also have it this number of times.
# The effect of the function is therefore:
# litter -> eilrtt
# cat -> act
# act -> act
# i.e. all anagrams will result to the same normalised string
function normalise_word(word) {
	# Use split to make an array, which contains the characters
	# of the word as array elements:
	split(word,arr,"")

	# Now sort the array
	n = asort(arr)

	# Concatenate the characters again and return
	res=""
	for (i=1; i<=n; ++i) {
		res = res arr[i]
	}
	return res
}

# Sort the array according to its values and store inside sorted
# the order of the indices required to obtain the sorted array.
# i.e. sorting
#    a["a"] = "b"
#    a["n"] = "a"
# using this function would yield
#    sorted[1] = "n"
#    sorted[2] = "a"
function argsort(array, sorted) {
	i=0
	for (key in array) {
		sorted[++i] = array[key] "@@@" key
	}
	n = asort(sorted)
	for (i=1;i<=n;++i) {
		sorted[i] = gensub(/^.*@@@/,"",1,sorted[i])
	}
	return n
}

# Skip all possessives (words with 's at the end)
/'s$/ { next }

{
	# In the data array we want to store the list of anagrams.
	# So the current word (record) is appended
	# to the value which is indexed by the normalised key
	key = normalise_word($1)
	val = data[key]

	# append, but only if there is something:
	if (val != "") {
		data[key] = val " " $1
	} else {
		data[key] = $1
	}

	# Keep a count of how many anagrams we found for this
	# normalised key
	count[key]++
}

END {
	# Drop keys with a count below 2 (i.e. no anagrams)
	for (key in count) {
		if (count[key] < 2) {
			delete count[key]
		}
	}

	# Perform argsort on count, i.e. sort the keys of count in a
	# way that the values they refer to come out sorted
	# if we write data[sorted[i]] with i running sequentially.
	n = argsort(count,sorted)

	for (i=1; i<=n; ++i) {
		print (data[sorted[i]])
	}
}
