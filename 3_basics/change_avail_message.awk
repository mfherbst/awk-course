# Match lines starting with B
# inform us about the unavailable phone and change the field.
/^B/ { print $1 "'s phone has become unavailable"
	$2 = "not_available" }
# Print all records separated by two tabs
{ print $1 "\t\t" $2 "\t\t" $3 }
