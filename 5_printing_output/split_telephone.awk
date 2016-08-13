#!/usr/bin/awk -f

BEGIN {
	# define name of name file
	namefile="name.list"
	
	# define name of phone file
	phonefile="phone.list"
}

{
	# Append name to namefile (all existing
	# content in namefile will be kept)
	print "$1" >> namefile

	# Write phone number to phonefile
	# The single > indicates that this is no append
	# i.e. that all content of the file will be erased
	# before awk touches it. All subsequent writes
	# will still append to the file
	print "$1" > phonefile
}
