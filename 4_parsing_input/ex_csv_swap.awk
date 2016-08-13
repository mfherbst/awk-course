#!/usr/bin/awk -f
BEGIN { FPAT="([^,]+)|(\"[^\"]+\")" }
{ print $1 "," $3 "," $2 }
