#!/usr/bin/awk -f
{
	arr["first"] = $1
	arr["second"] = $2
}
END {
	print("first:",arr["first"])
	print("second:",arr["second"])
}
