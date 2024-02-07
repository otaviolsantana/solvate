#!/bin/bash
#
# OpenMPI 5.0.1 profile script.
#

if [ -d $HOME_SOLVATE/suite/openmpi/bin ]; then
   export MPI_DIR=$HOME_SOLVATE/suite/openmpi/bin
   export PATH=$PATH:$MPI_DIR
fi
