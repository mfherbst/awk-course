#!/usr/bin/awk -f
$0 != prev
{ prev = $0 }
