import sys,pprint
pprint.pprint (sys.path)
pprint.pprint (dir(sys))
pprint.pprint (sys.argv)

import time, multiprocessing
print 123
exec 'print "hello"'

# dynamic features of python
C=type('C',(),{'x':123})
c=C()
print c.x
