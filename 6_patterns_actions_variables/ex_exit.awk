#!/usr/bin/awk -f
{ print }
/^B/ { exit 15 }
END { print "Reached END" }
