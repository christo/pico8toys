#!/usr/bin/env python3

import sys
import struct

# reads a decimal value from 0-255 one per line from stdin
# writes a file composed solely of the corresponding bytes 
# to the file specified on the commandline

f=open(sys.argv[1], "wb")
for line in sys.stdin.readlines():
    f.write(struct.pack('B', int(line.rstrip())))
f.close()
    
