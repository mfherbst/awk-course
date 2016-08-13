echo "wo (rd" | awk '/wo* \(/'        # match
echo "woo (rd" | awk '/wo* \(/'       # match
echo "oo (rd" | awk '/wo* \(/'        # no match
echo "oo (rd" | awk '/(wo)* \(/'      # match
echo "wowo (rd" | awk '/(wo)* \(/'    # match
