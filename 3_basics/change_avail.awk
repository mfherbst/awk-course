# Match lines starting with B
# and change the second field
/^B/ { $2 = "not_available" }
# Print all records including the changed one
{ print }
