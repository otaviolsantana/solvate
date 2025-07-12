#!/bin/bash
#
# Intel profile script.
#

if [ -d $HOME_SOLVATE/suite/intel ]; then
   export LIBRARY_PATH=$LIBRARY_PATH:/home/opt/intel/oneapi/compiler/2021.4.0/linux/compiler/lib/intel64_lin:/home/opt/intel/oneapi/compiler/2021.4.0/linux/lib:/home/opt/intel/onea
   export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/intel/mkl/lib/intel64/:/usr/local/lib64:/usr/local/lib/gcc/x86_64-pc-linux-gnu/9.4.0:/home/opt/intel/oneapi/compiler/2021.4.0/linux/lib:/home/opt/intel/oneapi/compiler/2021.4.0/linux/lib/x64:/home/opt/intel/oneapi/compiler/2021.4.0/linux/lib/emu:/home/opt/intel/oneapi/compiler/2021.4.0/linux/lib/oclfpga/host/linux64/lib:/home/opt/intel/oneapi/compiler/2021.4.0/linux/lib/oclfpga/linux64/lib:/home/opt/intel/oneapi/compiler/2021.4.0/linux/compiler/lib/intel64_lin:/home/opt/intel/oneapi/mkl/2021.4.0/lib/intel64
fi
