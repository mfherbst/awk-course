# if 3rd column is larger than 2 print it
# and increment counter c
$3 >= 2 { print; c++ }

# if we did some printing and the print count
# is divisible by 2 add an extra empty line 
$3 >= 2 && c % 2 == 0 { print ""}
