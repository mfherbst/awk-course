#!/usr/bin/awk -f
# if line is empty, quit
$0 == "" { exit }

# as soon as we hit a line called heading set pr=1
/heading/ { pr=1 }
# print if pr equals 1
pr == 1
