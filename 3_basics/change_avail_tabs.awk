# Match lines starting with B
# and change the second field
/^B/ { $2 = "not_available" }
# Print all records separated by two tabs
{ print $1 "\t\t" $2 "\t\t" $3 }
