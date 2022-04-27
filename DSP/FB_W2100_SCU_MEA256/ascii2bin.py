import sys
from binascii import *

infile=sys.argv[1]+".a0"
outfile=sys.argv[1]+".bin"

print("Converting",infile,"to",outfile)

try:
  fi = open(infile,'r')
except IOError: 
  print("file",infile,"not found")
  sys.exit(-1)

try:
  fo = open(outfile,'wb')
except IOError:
  print("can't open the output file",outfile)
  sys.exit(-2)

skip = fi.readline()

for line in fi:
  if len(line)>1:
     l=line.rstrip()
     x=unhexlify(l.replace(" ",""))
     fo.write(x)
    
     
