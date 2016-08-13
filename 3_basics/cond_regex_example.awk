{
	var="Some words in a variable."

	# use a regex literal
	print "var matches /variable\\./ " (var ~ /variable\./)

	# Use a regex variable
	re="^S..e.*le\\.$"
	print "var matches re? " (var ~ re)
	# Note: In order to precisely match the "." at the end of
	# var we need to escape the ".", i.e. use "\.".
	# This however would be interpreted by awk when making the
	# string variable re in line 8 before we reach the regex
	# in line 9.  So we need to escape the escape first ... 
	# Since this is not necessary for the regex literals
	# (see line 5) Those are usually preferred.

	# use an expression to build the regex
	build="-9]"
	print "var does not match [0" build "? " (var !~ "[0" build)

	# does $0 match?
	print (var ~ $0)
}
