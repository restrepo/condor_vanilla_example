#!/bin/bash
Process=$1

tar -xzvf benchmark.tar.gz
cd benchmark/
#run either one system program,
#or one script inside benchmark directory which
#take at least the argument $JID to differentiate 
#the output program:
./main_program.sh $Process
#The main program produces an output Output$Process.out
# which must be declared inside the condor submit file: 
# job.submit  as:
#transfer_output_files =  benchmark/Output$(Process).spc
# See job.submit for details

#Finally, force one time interval sufficiently high to generate
#a new random seed:
sleep 1
