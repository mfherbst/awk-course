#!/usr/bin/awk -f
BEGIN {
	string="ooh-ya-koo"

	n=split(string,a,"-")

	print("string is split into", n, "elements:")
	for(i=1;i<=n;++i) print("  :" a[i] ":")

	m=split(string,a,/[hky]/)
	print("string is split into", m, "elements:")
	for(i=1;i<=m;++i) print("  :" a[i] ":")
}
