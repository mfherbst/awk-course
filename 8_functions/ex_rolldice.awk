#!/usr/bin/awk -f

BEGIN {
	srand() # Seed with current date and time
}

# function to roll a dice (see section 8.2 for more
# explanation how functions are defined)
function roll_dice() {
       return 1 + int(rand()*6)
}

{
	for(i=0; i<$1; ++i) {
		printf("%d ", roll_dice())
	}
}
