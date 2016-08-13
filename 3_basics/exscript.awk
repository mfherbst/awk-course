{ print a }
{ num = "false"; a = a + 1 }
/[0-9]/ { num="true"; a = a - 1 }
{ print "num: " num }
