#!/usr/bin/env python
import time
import random
import sys
output_file='Output'+sys.argv[1]+'.out'
f=open(output_file,'w')
f.write('%.8f %.16f\n' %(time.time(),random.random()))
f.close()
