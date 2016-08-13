#!/usr/bin/awk -f
{
	arr[$1] = "value"
	arr["blu"] = "ber"

	if ("blu" in arr) {
		print "blu exists and has value " arr["blu"]
	} else {
		# Should not happen
		print "Cannot happen"
	}

	delete arr["blu"]

	if ("blu" in arr) {
		# Should not happen
		print "blu still exists?? with value " arr["blu"]
	} else {
		print "No blu no more"
	}

	if ($1 in arr) {
		print "We still have " $1 ": arr[" $1 "]=" arr[$1]
	}
}
