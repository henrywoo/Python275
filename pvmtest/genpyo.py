#!/usr/bin/env python
import ast 
import sys 
import os
import py_compile


def genpyo(i):
  if len(i)<3 or i[-3:]!='.py':
    return 1
  py_compile.compile(i,i+'o')
  return 0

if __name__ == '__main__':
  files=sys.argv[1:]
  for i in files:
    if os.path.isfile(i):
      if genpyo(i)==-1:
        print "Error:"+i
    elif os.path.isdir(i):
        for root, dirs, files in os.walk(i, topdown=False):
            for name in files:
                fname=(os.path.join(root, name))
                if(genpyo(fname)==-1):
                  print "Error:"+fname
                  #sys.exit(-1)
            #for name in dirs:
            #    print(os.path.join(root, name))
