{
	print "current: " $1 " " $2
	print prev " with buffer " buffer
}

# set the buffer if there is an i in the name
# and the 12 occurs on the line as well (e.g. in the phone number)
/i.*12/ { buffer = $2 }

{
	prev = $1 " " $2    # store the current record in prev
	print ""            # print an empty line 
}
