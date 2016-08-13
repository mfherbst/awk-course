# $0 is always defined to be the current record,
# but A is undefined at this point
{
	print "$0 is " $0 " but A is " A
	N = 15
}

# print N and define A
{ print N; A = $1 }

# print A
{ print "String " A " has length " length(A) }
