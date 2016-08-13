#!/usr/bin/awk -f
BEGIN {
	# For the first column (name, allow 12 characters
	# - enforces justification to the left)
	name_width = 12
	format = format "%-" name_width "s"

	# Column separator
	format = format " | "

	# For the second column (phone number) allow
	# 8 characters, right-justify
	phone_width = 8
	format = format "%" phone_width "s"

	# Column separator
	format = format " | "

	# For the number of years employed allow 8
	# characters
	years_width = 8
	format = format "%" years_width "s\n"

	# Print the headline
	printf(format,"Name","Phone-No","yrs empld")
}
{ printf(format,$1,$2,$3) }
