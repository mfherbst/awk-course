#!/usr/bin/awk -f

{
	# $1 contains the name
	# $2 contains the phone number

	# We want to pipe some text to the program, which
	# we want to fax to the person
	text="Hello " $1 "\n"
	text=text "I will call you soon for further info.\n"
	text=text "Best"

	# We call send_fax with the number as argument
	print text | ("send_fax " $2)

	# This is one of the subtleties when using this feature
	# with awk: Sometimes a manual close() is necessary.
	close("send_fax " $2)
}
