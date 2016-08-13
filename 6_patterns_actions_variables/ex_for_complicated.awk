#!/usr/bin/awk -f
{
	for (i = 1; i <= 100; i *= 2) {
		print(i, $0)
	}
}
