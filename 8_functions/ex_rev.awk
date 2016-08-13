#!/usr/bin/awk -f

# A helper function to achieve the reversal
function rev_helper(string,start) {
	# start starts off to be the string length
	# (last character) and is reduced during the
	# recursive call. If it is 0 recursion has to end
	if (start == 0) return ""

	# Append the character under start and call
	# myself recursively reducing the value of start by one.
	return (substr(string,start,1) rev_helper(string,start-1))
}

# Do the reversal: Call the helper function
# appropriately
function rev(string) {
	return rev_helper(string,length(string))
}

{ print rev($0) }
