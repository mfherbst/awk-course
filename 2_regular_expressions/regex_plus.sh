echo "woo (rd" | awk '/wo+ \(/'    # matches
echo "oo (rd" | awk '/(wo)+ \(/'   # no match
echo "wo (rd" | awk '/(wo)+ \(/'   # no match
