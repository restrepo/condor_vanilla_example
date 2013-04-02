#!/bin/bash
Process=$1

tar -xzvf benchmark.tar.gz
cd benchmark/
#run either one system program,
#or one script inside benchmark directory which
#take at least the argument $JID to differentiate 
#the output program:
./main_program.py $Process
#The main program produces an output Output$Process.out
# which must be declared inside the condor submit file: 
# job.submit  as:
#transfer_output_files =  benchmark/Output$(Process).spc
# See job.submit for details

#Finally, sleep for while to be sure that a new random seed
# is generated
sleep 1
