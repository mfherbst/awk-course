#!/usr/bin/awk -f

{
	for(i=0; i<$1; ++i) {
		printf("%12.10f ", rand())
	}
}
