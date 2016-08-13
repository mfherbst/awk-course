#!/usr/bin/awk -f
# print records separated by :
BEGIN { ORS=":" }
{ print }
# finish off with a newline:
END {print "\n"}
