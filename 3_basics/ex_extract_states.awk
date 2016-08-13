#!/usr/bin/awk -f

# We use the state variable inside_block to keep track whether
# we are inside or outside an excited states block
# It's default value is 0, i.e. outside 

# whenever we encounter the "  Excited state ", we 
# change the flag to indicate that we are inside the table.
# also we store the state number, which sits in the third field
/^ *Excited state / { inside_block=1; state_number=$3 }

# if we find the "Term symbol" line inside the block, we store 
# the term symbol which sits in $3 $4 and $5
inside_block==1 && /^ *Term symbol/ { term_symbol=$3 " " $4 " " $5 }

# if we find the "Excitation energy" line, we store the excitation energy
# and print the table, since we do not care about the rest of the 
# block. Next we reset the inside_block flag for the next block to come.
inside_block==1 && /^ *Excitation energy/ {
	excitation_energy=$3

	# print the data tab-separated (for analysis with e.g. cut)
	print state_number "\t" term_symbol "\t" excitation_energy

	inside_block=0
}
