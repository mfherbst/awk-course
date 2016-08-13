#!/usr/bin/awk -f
BEGIN {
	a["array"] = "awk"
	a["value"] = "is"
	a["some"] = "cool"

	res = asorti(a,b)
	print(res, b[1], b[2], b[3])
	print("a", a["some"], a["array"], a["value"])
	print("")

	res2 = asorti(a)
	print(res2, a[1], a[2], a[3])
}

