# ^[[:space:]]*[0[:alpha:]]+ matches arbitrarily many spaces
# followed by at least one 0 or letter

echo "     a" | awk '/^[[:space:]]*[0[:alpha:]]+/'  # Match
echo " 00" | awk '/^[[:space:]]*[0[:alpha:]]+/'     # Match
echo "1" | awk '/^[[:space:]]*[0[:alpha:]]+/'       # No match
echo "   1" | awk '/^[[:space:]]*[0[:alpha:]]+/'    # No match
